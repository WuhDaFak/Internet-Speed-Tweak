color 17
echo off
cls
echo Windows 8.1 and under version
echo Run as administrator for this to work!!!
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
pause
cls
exit
