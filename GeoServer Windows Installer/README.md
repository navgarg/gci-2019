This page describes the prcess followed to build a Windows Installer for GeoServer.

**Environment:** Windows 10 machine, 64-bit

**Steps:**

1. Download and install NSIS from the link https://nsis.sourceforge.io/Main_Page
(NSIS (Nullsoft Scriptable Install System) is a professional open source system to create Windows installers.)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/1.PNG)

2. Now we need to install the NSIS Access Control plugin. For this, we will first download the zip file from the link http://nsis.sourceforge.net/AccessControl_plug-in and extract in our computer. 

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/2.PNG)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/3.PNG)

3. Then we copy the file `AccessControl.dll` from the Plugins folder of NSIS_AccessControl to c:\Program FIles (x86)\NSIS\Plugin\x86-ansi

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/paste%20ansi%20file.PNG)

4. Then copy the file `AccessControl.dll` from the Unicode\Plugins folder of NSIS_AccessControl to c:\Program FIles(x86)\NSIS\Plugins\x86-unicode.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/paste%20unicode%20file.PNG)

5. Now download the GeoServer Source Code in zipped format from the link http://geoserver.org/release/stable/

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/6.PNG)

6. Also download the GeoServer Binary Package from the same page i.e. http://geoserver.org/release/stable/

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/Binary%20Package.PNG)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/5.PNG)

7. Extract Geoserver Source Code and Geoserver Binary Package.

8. Copy the contents of the src/release/installer/win of Geoserver Source Code into root folder of GeoServer Binary Package (i.e. the same level in which start.jar file is located)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/files.PNG)

9. Now right click on the file GeoServerEXE.nsi file (which is the NSIS Compiler script) and select the option Compile NSIS Script.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/compile%20script.PNG)

This will compile the GeoServer code and give one .exe file, which can be double clicked to start the GeoServer Windows Installer.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/Compilation%20in%20progress.PNG)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/compilation%20complete.PNG)

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer%20Windows%20Installer/Images/final.PNG)  

That's all. Our GeoServer Windows Installer is ready to be used.

Link to the GeoServer installer - https://drive.google.com/open?id=1p4ZSYOawuSpRw76Qw4RFFdwsvd2ADRWE
