EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pool Monitor"
Date ""
Rev "2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR0101
U 1 1 60B2CDFF
P 1300 800
F 0 "#PWR0101" H 1300 650 50  0001 C CNN
F 1 "+3.3V" H 1315 973 50  0000 C CNN
F 2 "" H 1300 800 50  0001 C CNN
F 3 "" H 1300 800 50  0001 C CNN
	1    1300 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60B5B62F
P 2050 2300
F 0 "#PWR0103" H 2050 2050 50  0001 C CNN
F 1 "GND" V 2055 2172 50  0000 R CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP-12E U2
U 1 1 60B2E57C
P 2050 1600
F 0 "U2" H 2050 2581 50  0000 C CNN
F 1 "ESP-12E" H 2050 2490 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 2050 1600 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 1700 1700 50  0001 C CNN
F 4 "C89297" H 2050 1600 50  0001 C CNN "LCSC"
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60C09F82
P 3950 1600
F 0 "#PWR0112" H 3950 1350 50  0001 C CNN
F 1 "GND" V 3850 1600 50  0000 R CNN
F 2 "" H 3950 1600 50  0001 C CNN
F 3 "" H 3950 1600 50  0001 C CNN
	1    3950 1600
	1    0    0    -1  
$EndComp
Text GLabel 2650 1500 2    50   Input ~ 0
TempSenseIn
$Comp
L Device:R_Small R6
U 1 1 60C135D7
P 2250 3800
F 0 "R6" V 2054 3800 50  0000 C CNN
F 1 "4k7" V 2145 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2250 3800 50  0001 C CNN
F 3 "~" H 2250 3800 50  0001 C CNN
F 4 "C242482" V 2250 3800 50  0001 C CNN "LCSC"
	1    2250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60C2B5A7
P 2750 1900
F 0 "R5" V 2554 1900 50  0000 C CNN
F 1 "10k" V 2645 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2750 1900 50  0001 C CNN
F 3 "~" H 2750 1900 50  0001 C CNN
F 4 "C118075" V 2750 1900 50  0001 C CNN "LCSC"
	1    2750 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 60C2B5B1
P 2850 1900
F 0 "#PWR0115" H 2850 1650 50  0001 C CNN
F 1 "GND" V 2855 1772 50  0000 R CNN
F 2 "" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	0    -1   -1   0   
$EndComp
Text GLabel 2650 1000 2    50   Input ~ 0
GPIO0_IN
NoConn ~ 2650 1200
NoConn ~ 2650 1600
NoConn ~ 2650 1700
NoConn ~ 2650 1800
NoConn ~ 1450 1100
NoConn ~ 1450 1300
NoConn ~ 1450 1400
NoConn ~ 1450 1500
NoConn ~ 1450 1600
NoConn ~ 1450 1700
NoConn ~ 1450 1900
NoConn ~ 1450 2000
NoConn ~ 1450 2100
Text GLabel 1950 3700 0    50   Input ~ 0
TempSenseIn
$Comp
L Switch:SW_Push SW_RESET1
U 1 1 60C13C8C
P 6400 5950
F 0 "SW_RESET1" H 6400 6235 50  0000 C CNN
F 1 "SW_Push" H 6400 6144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 6400 6150 50  0001 C CNN
F 3 "~" H 6400 6150 50  0001 C CNN
F 4 "C115357" H 6400 5950 50  0001 C CNN "LCSC"
	1    6400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 60C1A8D3
P 6050 7300
F 0 "R8" V 5854 7300 50  0000 C CNN
F 1 "10K" V 5945 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6050 7300 50  0001 C CNN
F 3 "~" H 6050 7300 50  0001 C CNN
F 4 "C118075" V 6050 7300 50  0001 C CNN "LCSC"
	1    6050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7200 6150 7200
$Comp
L power:+3.3V #PWR0116
U 1 1 60C21F2D
P 6050 7400
F 0 "#PWR0116" H 6050 7250 50  0001 C CNN
F 1 "+3.3V" H 6065 7573 50  0000 C CNN
F 2 "" H 6050 7400 50  0001 C CNN
F 3 "" H 6050 7400 50  0001 C CNN
	1    6050 7400
	-1   0    0    1   
$EndComp
Text GLabel 6050 7200 1    50   Input ~ 0
GPIO0_IN
$Comp
L power:GND #PWR0117
U 1 1 60C383DE
P 6550 7200
F 0 "#PWR0117" H 6550 6950 50  0001 C CNN
F 1 "GND" V 6555 7072 50  0000 R CNN
F 2 "" H 6550 7200 50  0001 C CNN
F 3 "" H 6550 7200 50  0001 C CNN
	1    6550 7200
	0    -1   -1   0   
$EndComp
Text GLabel 1450 1000 0    50   Input ~ 0
RST_IN
Text GLabel 6050 5950 1    50   Input ~ 0
RST_IN
$Comp
L Device:R_Small R7
U 1 1 60C4BF28
P 6050 6050
F 0 "R7" V 5854 6050 50  0000 C CNN
F 1 "10K" V 5945 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6050 6050 50  0001 C CNN
F 3 "~" H 6050 6050 50  0001 C CNN
F 4 "C118075" V 6050 6050 50  0001 C CNN "LCSC"
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 60C4BF32
P 6050 6200
F 0 "#PWR0118" H 6050 6050 50  0001 C CNN
F 1 "+3.3V" H 6065 6373 50  0000 C CNN
F 2 "" H 6050 6200 50  0001 C CNN
F 3 "" H 6050 6200 50  0001 C CNN
	1    6050 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 5950 6200 5950
$Comp
L power:GND #PWR0119
U 1 1 60C4EAFD
P 6600 5950
F 0 "#PWR0119" H 6600 5700 50  0001 C CNN
F 1 "GND" V 6605 5822 50  0000 R CNN
F 2 "" H 6600 5950 50  0001 C CNN
F 3 "" H 6600 5950 50  0001 C CNN
	1    6600 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 6150 6050 6200
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 60C579D4
P 5050 6250
F 0 "J2" H 5078 6226 50  0000 L CNN
F 1 "Conn_01x06_Female" H 5078 6135 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5050 6250 50  0001 C CNN
F 3 "~" H 5050 6250 50  0001 C CNN
F 4 "C225503" H 5050 6250 50  0001 C CNN "LCSC"
	1    5050 6250
	0    1    1    0   
$EndComp
Text GLabel 5150 6050 1    50   Input ~ 0
RX_IN
Text GLabel 5050 6050 1    50   Input ~ 0
TX_IN
$Comp
L Switch:SW_Push SW_FLASH1
U 1 1 60C14EAC
P 6350 7200
F 0 "SW_FLASH1" H 6350 7485 50  0000 C CNN
F 1 "SW_Push" H 6350 7394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 6350 7400 50  0001 C CNN
F 3 "~" H 6350 7400 50  0001 C CNN
F 4 "C115357" H 6350 7200 50  0001 C CNN "LCSC"
	1    6350 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male TempSense1
U 1 1 60C07B2C
P 2600 3700
F 0 "TempSense1" H 2572 3632 50  0000 R CNN
F 1 "Conn_01x03_Male" H 2572 3723 50  0000 R CNN
F 2 "Connector_Molex:Molex_SPOX_5267-03A_1x03_P2.50mm_Vertical" H 2600 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
F 4 "C293315" H 2600 3700 50  0001 C CNN "LCSC"
	1    2600 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60C5C667
P 1800 7100
F 0 "#PWR03" H 1800 6850 50  0001 C CNN
F 1 "GND" V 1805 6972 50  0000 R CNN
F 2 "" H 1800 7100 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR05
U 1 1 60C640F3
P 2000 7400
F 0 "#PWR05" H 2000 7250 50  0001 C CNN
F 1 "+BATT" H 2015 7573 50  0000 C CNN
F 2 "" H 2000 7400 50  0001 C CNN
F 3 "" H 2000 7400 50  0001 C CNN
	1    2000 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60BD80E7
P 950 7300
F 0 "#PWR0105" H 950 7050 50  0001 C CNN
F 1 "GND" V 955 7172 50  0000 R CNN
F 2 "" H 950 7300 50  0001 C CNN
F 3 "" H 950 7300 50  0001 C CNN
	1    950  7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60C74530
P 4750 6050
F 0 "#PWR02" H 4750 5800 50  0001 C CNN
F 1 "GND" V 4750 5900 50  0000 R CNN
F 2 "" H 4750 6050 50  0001 C CNN
F 3 "" H 4750 6050 50  0001 C CNN
	1    4750 6050
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 60C5C862
P 4950 6050
F 0 "#PWR01" H 4950 5900 50  0001 C CNN
F 1 "+3.3V" V 4950 6300 50  0000 C CNN
F 2 "" H 4950 6050 50  0001 C CNN
F 3 "" H 4950 6050 50  0001 C CNN
	1    4950 6050
	1    0    0    -1  
$EndComp
Wire Notes Line
	4350 5300 4350 7800
Wire Notes Line
	500  7800 500  5300
Text Label 550  5500 0    157  ~ 0
Power
NoConn ~ 5250 6050
NoConn ~ 4850 6050
$Comp
L power:+3.3V #PWR0106
U 1 1 60CA8AA9
P 1250 1200
F 0 "#PWR0106" H 1250 1050 50  0001 C CNN
F 1 "+3.3V" H 1265 1373 50  0000 C CNN
F 2 "" H 1250 1200 50  0001 C CNN
F 3 "" H 1250 1200 50  0001 C CNN
	1    1250 1200
	0    -1   -1   0   
$EndComp
Text GLabel 2650 1100 2    50   Input ~ 0
RX_IN
Text GLabel 2650 1300 2    50   Input ~ 0
TX_IN
Wire Notes Line
	6950 5300 6950 7800
Wire Notes Line
	500  5300 6950 5300
Wire Notes Line
	500  7800 6950 7800
Text Label 4400 5500 0    157  ~ 0
Boot_And_Flash
Wire Wire Line
	1950 3700 2250 3700
Connection ~ 2250 3700
Wire Wire Line
	2250 3700 2400 3700
Wire Wire Line
	2250 3900 2250 4000
Wire Wire Line
	2250 3900 2400 3900
Wire Wire Line
	2400 3900 2400 3800
Connection ~ 2250 3900
$Comp
L Device:Q_PMOS_DGS Q1
U 1 1 60CFB040
P 2000 7200
F 0 "Q1" V 2342 7200 50  0000 C CNN
F 1 "DMP2225L-7 " V 2251 7200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 7300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809081625_Diodes-Incorporated-DMP2225L-7_C110501.pdf" H 2000 7200 50  0001 C CNN
F 4 "C110501" V 2000 7200 50  0001 C CNN "LCSC"
	1    2000 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60CE8472
P 1050 7300
F 0 "#FLG0102" H 1050 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 7473 50  0000 C CNN
F 2 "" H 1050 7300 50  0001 C CNN
F 3 "~" H 1050 7300 50  0001 C CNN
	1    1050 7300
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60CEB577
P 950 7300
F 0 "#FLG0103" H 950 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7473 50  0000 C CNN
F 2 "" H 950 7300 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
	1    950  7300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 7300 1050 7550
Text GLabel 2650 2000 2    50   Input ~ 0
RST_IN
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60CF1665
P 1050 7100
F 0 "J1" V 1112 7144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 950 6750 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 1050 7100 50  0001 C CNN
F 3 "~" H 1050 7100 50  0001 C CNN
F 4 "C293435" V 1050 7100 50  0001 C CNN "LCSC"
	1    1050 7100
	0    1    1    0   
$EndComp
Connection ~ 1050 7300
Connection ~ 950  7300
Wire Wire Line
	2200 7550 2200 7100
$Comp
L Device:R_Small R1
U 1 1 60EDCFCC
P 1350 1200
F 0 "R1" V 1154 1200 50  0000 C CNN
F 1 "10K" V 1245 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 1350 1200 50  0001 C CNN
F 3 "~" H 1350 1200 50  0001 C CNN
F 4 "C118075" V 1350 1200 50  0001 C CNN "LCSC"
	1    1350 1200
	0    1    1    0   
$EndComp
$Comp
L PoolMonitor-rescue:K7803M-1000R3-K7803M-1000R3 PS1
U 1 1 61496AA2
P 1700 5950
F 0 "PS1" H 1700 6317 50  0000 C CNN
F 1 "K7803M-1000R3" H 1700 6226 50  0000 C CNN
F 2 "CONV_K7803M-1000R3" H 1700 5950 50  0001 L BNN
F 3 "" H 1700 5950 50  0001 L BNN
F 4 "10.9 mm" H 1700 5950 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 1700 5950 50  0001 L BNN "STANDARD"
F 6 "2020.01.08-A/5" H 1700 5950 50  0001 L BNN "PARTREV"
F 7 "Mornsun" H 1700 5950 50  0001 L BNN "MANUFACTURER"
	1    1700 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 6149745A
P 1550 700
F 0 "C4" H 1638 746 50  0000 L CNN
F 1 "1uf" H 1638 655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1550 700 50  0001 C CNN
F 3 "~" H 1550 700 50  0001 C CNN
F 4 "C397311" H 1550 700 50  0001 C CNN "LCSC"
	1    1550 700 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 800  1550 800 
Connection ~ 1550 800 
Wire Wire Line
	1550 800  2050 800 
$Comp
L power:GND #PWR06
U 1 1 614998BB
P 1300 600
F 0 "#PWR06" H 1300 350 50  0001 C CNN
F 1 "GND" V 1305 472 50  0000 R CNN
F 2 "" H 1300 600 50  0001 C CNN
F 3 "" H 1300 600 50  0001 C CNN
	1    1300 600 
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 600  1550 600 
$Comp
L Device:CP_Small C1
U 1 1 6149B445
P 850 5950
F 0 "C1" H 938 5996 50  0000 L CNN
F 1 "10uF" H 938 5905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 850 5950 50  0001 C CNN
F 3 "~" H 850 5950 50  0001 C CNN
F 4 "C190963" H 850 5950 50  0001 C CNN "LCSC"
	1    850  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5850 1000 5850
$Comp
L Device:CP_Small C2
U 1 1 6149D804
P 2500 5950
F 0 "C2" H 2588 5996 50  0000 L CNN
F 1 "22uF" H 2588 5905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2500 5950 50  0001 C CNN
F 3 "~" H 2500 5950 50  0001 C CNN
F 4 "C89789" H 2500 5950 50  0001 C CNN "LCSC"
	1    2500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5850 2500 5850
Wire Wire Line
	2400 6050 2500 6050
$Comp
L power:GND #PWR04
U 1 1 6149FE67
P 850 6050
F 0 "#PWR04" H 850 5800 50  0001 C CNN
F 1 "GND" V 750 6050 50  0000 R CNN
F 2 "" H 850 6050 50  0001 C CNN
F 3 "" H 850 6050 50  0001 C CNN
	1    850  6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 614A059B
P 2500 6050
F 0 "#PWR08" H 2500 5800 50  0001 C CNN
F 1 "GND" V 2400 6050 50  0000 R CNN
F 2 "" H 2500 6050 50  0001 C CNN
F 3 "" H 2500 6050 50  0001 C CNN
	1    2500 6050
	1    0    0    -1  
$EndComp
Connection ~ 2500 6050
$Comp
L power:+3.3V #PWR07
U 1 1 614A13AB
P 2500 5850
F 0 "#PWR07" H 2500 5700 50  0001 C CNN
F 1 "+3.3V" H 2500 6000 50  0000 C CNN
F 2 "" H 2500 5850 50  0001 C CNN
F 3 "" H 2500 5850 50  0001 C CNN
	1    2500 5850
	1    0    0    -1  
$EndComp
Connection ~ 2500 5850
$Comp
L power:+BATT #PWR0102
U 1 1 614AA1C0
P 750 5850
F 0 "#PWR0102" H 750 5700 50  0001 C CNN
F 1 "+BATT" H 765 6023 50  0000 C CNN
F 2 "" H 750 5850 50  0001 C CNN
F 3 "" H 750 5850 50  0001 C CNN
	1    750  5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	750  5850 850  5850
Connection ~ 850  5850
Text GLabel 2400 3600 1    50   Input ~ 0
TempSenseGND
$Comp
L Transistor_FET:AO3400A Q2
U 1 1 614B9BD5
P 3850 1400
F 0 "Q2" H 4055 1354 50  0000 L CNN
F 1 "AO3400A" H 4055 1445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 1325 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 3850 1400 50  0001 L CNN
F 4 "C344010" H 3850 1400 50  0001 C CNN "LCSC"
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 614BE81E
P 2250 4000
F 0 "#PWR0104" H 2250 3850 50  0001 C CNN
F 1 "+3.3V" V 2150 4050 50  0000 C CNN
F 2 "" H 2250 4000 50  0001 C CNN
F 3 "" H 2250 4000 50  0001 C CNN
	1    2250 4000
	0    -1   -1   0   
$EndComp
Text GLabel 3950 1200 1    50   Input ~ 0
TempSenseGND
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 614DD2A4
P 2000 7400
F 0 "#FLG0101" H 2000 7475 50  0001 C CNN
F 1 "PWR_FLAG" V 2000 7528 50  0000 L CNN
F 2 "" H 2000 7400 50  0001 C CNN
F 3 "~" H 2000 7400 50  0001 C CNN
	1    2000 7400
	0    1    1    0   
$EndComp
Connection ~ 2000 7400
NoConn ~ 1450 1800
Wire Wire Line
	2650 1400 3650 1400
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 617E82E7
P 3050 7550
F 0 "J4" H 3022 7432 50  0000 R CNN
F 1 "Conn_01x02_Male" H 3022 7523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3050 7550 50  0001 C CNN
F 3 "~" H 3050 7550 50  0001 C CNN
	1    3050 7550
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR010
U 1 1 617F936C
P 2850 7400
F 0 "#PWR010" H 2850 7250 50  0001 C CNN
F 1 "+BATT" H 2865 7573 50  0000 C CNN
F 2 "" H 2850 7400 50  0001 C CNN
F 3 "" H 2850 7400 50  0001 C CNN
	1    2850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7400 2850 7450
Wire Wire Line
	2200 7550 2850 7550
Connection ~ 2200 7550
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 617FFD45
P 1400 3500
F 0 "J3" H 1508 3681 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1508 3590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 3500 50  0001 C CNN
F 3 "~" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3600 2400 3600
$Comp
L power:GND #PWR09
U 1 1 61810A79
P 1600 3500
F 0 "#PWR09" H 1600 3250 50  0001 C CNN
F 1 "GND" V 1605 3372 50  0000 R CNN
F 2 "" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 7550 2200 7550
$EndSCHEMATC