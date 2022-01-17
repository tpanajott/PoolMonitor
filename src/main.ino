/*************************************************
      Based on: https://arduinodiy.wordpress.com/2020/01/23/very-deep-sleep-part-3-mqtt/
 *************************************************/
//long SLEEPTIME = 600e6; //10min
//unsigned long SLEEPTIME = 3600L * 1000000L; // 1 hour
#include "Arduino.h"
#include <ESP8266WiFi.h>
#include "PubSubClient.h"
#include <settings.h>

// We make a structure to store connection information
// The ESP8266 RTC memory is arranged into blocks of 4 bytes. The access methods read and write 4 bytes at a time,
// so the RTC data structure should be padded to a 4-byte multiple.
struct {
  uint32_t crc32;   // 4 bytes
  uint8_t channel;  // 1 byte,   5 in total
  uint8_t ap_mac[6];// 6 bytes, 11 in total
  uint8_t padding;  // 1 byte,  12 in total
} rtcData;


// IPAddress ip(192, 168, 1, 7); // pick your own IP outside the DHCP range of your router
// IPAddress gateway(192, 168, 1, 1); //watch out, these are comma's not dots
IPAddress ip(IP_ADDRESS); // pick your own IP outside the DHCP range of your router
IPAddress subnet(IP_SUBNET);
IPAddress gateway(IP_GATEWAY); //watch out, these are comma's not dots
IPAddress dns(IP_DNS);
//--------- MQTT
WiFiClient espClient;
PubSubClient client(espClient);
//-------DS18B20-------
#include <OneWire.h>
#include <DallasTemperature.h>
OneWire oneWire(D1);
DallasTemperature temp_sensor(&oneWire);
float current_temperature = 0;

void setup() {
  Serial.begin(9600);
  // Disable WiFi, coming from DeepSleep, as we do not need it right away
  WiFi.mode( WIFI_OFF );
  WiFi.forceSleepBegin();
  delay(1);
  
  // Turn on power to the DS18B20 sensor
  pinMode(DS18B20_FET_PIN, OUTPUT);
  digitalWrite(DS18B20_FET_PIN, HIGH);
  delay(10);

  // Get temperature while WiFi is off
  temp_sensor.begin();
  temp_sensor.requestTemperatures();
  delay(2);
  current_temperature = temp_sensor.getTempCByIndex(0);
  // Turn off power to the DS18B20 sensor
  digitalWrite(DS18B20_FET_PIN, LOW);

  // Try to read WiFi settings from RTC memory
  bool rtcValid = false;
  if ( ESP.rtcUserMemoryRead( 0, (uint32_t*)&rtcData, sizeof( rtcData ) ) ) {
    // Calculate the CRC of what we just read from RTC memory, but skip the first 4 bytes as that's the checksum itself.
    uint32_t crc = calculateCRC32( ((uint8_t*)&rtcData) + 4, sizeof( rtcData ) - 4 );
    if ( crc == rtcData.crc32 ) {
      rtcValid = true;
    }
  }
  

  // Start connection WiFi
  //Switch Radio back On
  WiFi.forceSleepWake();
  delay( 1 );

  // Disable the WiFi persistence.  The ESP8266 will not load and save WiFi settings unnecessarily in the flash memory.
  WiFi.persistent( false );
  // Bring up the WiFi connection
  WiFi.mode( WIFI_STA );
  WiFi.config( ip, dns, gateway, subnet );
  //-----------Now we replace the normally used "WiFi.begin();" with a precedure using connection data stored by us
  if ( rtcValid ) {
    // The RTC data was good, make a quick connection
    WiFi.begin( WLAN_SSID, WLAN_PASSWD, rtcData.channel, rtcData.ap_mac, true );
  }
  else {
    // The RTC data was not valid, so make a regular connection
    WiFi.begin( WLAN_SSID, WLAN_PASSWD );
  }
  //WiFi.begin( WLAN_SSID, WLAN_PASSWD );

  //------now wait for connection
  int retries = 0;
  int wifiStatus = WiFi.status();
  while ( wifiStatus != WL_CONNECTED ) {
    retries++;
    if ( retries == 100 ) {
      // Quick connect is not working, reset WiFi and try regular connection
      WiFi.disconnect();
      delay( 10 );
      WiFi.forceSleepBegin();
      delay( 10 );
      WiFi.forceSleepWake();
      delay( 10 );
      WiFi.begin( WLAN_SSID, WLAN_PASSWD );
    }
    if ( retries == 600 ) {
      // Giving up after 30 seconds and going back to sleep
      WiFi.disconnect( true );
      delay( 1 );
      WiFi.mode( WIFI_OFF );
      ESP.deepSleep(SLEEP_TIME, WAKE_RF_DISABLED );
      return; // Not expecting this to be called, the previous call will never return.
    }
    delay( 50 );
    wifiStatus = WiFi.status();
  }

  //-----
  // Write current connection info back to RTC
  rtcData.channel = WiFi.channel();
  memcpy( rtcData.ap_mac, WiFi.BSSID(), 6 ); // Copy 6 bytes of BSSID (AP's MAC address)
  rtcData.crc32 = calculateCRC32( ((uint8_t*)&rtcData) + 4, sizeof( rtcData ) - 4 );
  ESP.rtcUserMemoryWrite( 0, (uint32_t*)&rtcData, sizeof( rtcData ) );


  //---------As we are connected to WiFi, begin MQTT connection
  client.setServer(MQTT_SERV_IP, MQTT_PORT); //your MQTT server's IP.Mind you, these are separated by dots again
  //client.setCallback(callback);
  
  //-------Here is where you send data
  sendMQTTmessage();
  //------------------
  
  /* Close WiFi connection */
  //client.stop();

  //----and go to back to sleep
  WiFi.disconnect( true );
  delay( 1 );

  // WAKE_RF_DISABLED to keep the WiFi radio disabled when we wake up
  ESP.deepSleep(3600*1e6, WAKE_RF_DISABLED );
}


void loop() {
  // Loop is never used. All magic is happening in setup, after setup is done the device will go to sleep
}

void sendMQTTmessage()
{
  if (!client.connected()) {
    reconnect();
  }
  client.publish(MQTT_TEMP_TOPIC, String(current_temperature).c_str(), false);
  delay(10);
  
  /* Close MQTT client cleanly */
  client.disconnect();
}

void reconnect() {
  int failed_counter = 0;
  while (!client.connected())
  {
    bool connectSuccessful = false;
    if(MQTT_USE_AUTH) {
      connectSuccessful = client.connect(MQTT_DEVICE_NAME, MQTT_USERNAME, MQTT_PASSWORD);
    } else {
      connectSuccessful = client.connect(MQTT_DEVICE_NAME);
    }

    if (!connectSuccessful)
    {
      Serial.print("failed, rc= ");
      Serial.print(client.state());
      delay(1000);
      failed_counter++;
      if(failed_counter >= 3) {
        // 3 or more failed attempts to connect to MQTT server was made. Stop trying and go back to sleep
          WiFi.disconnect( true );
          delay( 1 );

          // WAKE_RF_DISABLED to keep the WiFi radio disabled when we wake up
          ESP.deepSleep(3600*1e6, WAKE_RF_DISABLED );
      }
    }
  }
}

// the CRC routine
uint32_t calculateCRC32( const uint8_t *data, size_t length ) {
  uint32_t crc = 0xffffffff;
  while ( length-- ) {
    uint8_t c = *data++;
    for ( uint32_t i = 0x80; i > 0; i >>= 1 ) {
      bool bit = crc & 0x80000000;
      if ( c & i ) {
        bit = !bit;
      }

      crc <<= 1;
      if ( bit ) {
        crc ^= 0x04c11db7;
      }
    }
  }

  return crc;
}
