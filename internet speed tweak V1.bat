color 17
echo off
cls
echo Run as administrator for this to work!!!
set /p q=Which windows version are you using?-
if "%q%" == "windows 10" goto :10
if "%q%" == "windows 8" goto :8
if "%q%" == "windows 7" goto :8
if "%q%" == "windows vista" goto :8
if "%q%" == "windows xp" goto :8

:8
cls
echo windows 8 and below
set /p q2=Do you want to do a ping test?-
if "%q2%" == "yes" goto :yes8
if "%q2%" == "y" goto :yes8
if "%q2%" == "n" goto :no8
if "%q2%" == "no" goto :no8

:yes8
cls
ping google.com
pause
cls
exit

:no8
cls
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
echo ________________________________________________________________________________
echo We have changed settings that may speed up your internet connection
echo but you need to restart computer.
pause
cls
echo Here are the changes...
netsh int tcp show global
echo ............
echo ............
echo 1: "netsh int tcp set global chimney=enabled"
echo 2: "netsh int tcp set global autotuninglevel=normal"
echo 3: "netsh int tcp set global congestionprovider=ctcp"
echo You should restart your computer.
pause
cls
exit

:10
cls
echo Windows 10
set /p q1=Do you want to do a ping test?-
if "%q1%" == "yes" goto :yes
if "%q1%" == "y" goto :yes
if "%q1%" == "n" goto :no
if "%q1%" == "no" goto :no

:yes
cls
ping google.com
pause
cls
exit

:no
cls
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global fastopen=enable
netsh int tcp set supplemental internet congestionprovider=ctcp

echo ________________________________________________________________________________
echo You should restart your computer to apply settings.
pause
cls
echo Here are the changes made...
netsh int tcp show global
echo ............
netsh int tcp show supplemental
echo ............
echo 1: "netsh int tcp set global autotuninglevel=normal"
echo 2: "netsh int tcp set global fastopen=enable"
echo 3: "netsh int tcp set supplemental internet congestionprovider=ctcp"
pause
cls
exit
