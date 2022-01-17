# PoolMonitor
## Installation of software
1. Connect a FTDI programmer set to 3.3V to the header on the PCB.
2. Download and installation VS Code together with the PlatformIO extention.
3. Download this repo and open it with PlatformIO.
4. Hold the SW_FLASH1 button and press and release the SW_RESET1 button. This will put the device into a programming mode.
5. Create a copy of the "settings.h.example" file found in the "src/" directory and name it "settings.h".
6. Configure all relevant paramaters in the "settings.h" file.
7. Make sure to save everything and then press "Upload" in PlatformIO.
8. Once the upload is complete, disconnect the FTDI-programmer.
9. Done, enjoy.