color 17
echo off
cls
echo Windows 10 version
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
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global fastopen=enable
echo ________________________________________________________________________________
echo You should restart your computer to apply settings.
pause
cls
echo Here are the changes made...
netsh int tcp show global
echo ............
echo ............
echo 1: "netsh int tcp set global autotuninglevel=normal"
echo 2: "netsh int tcp set global fastopen=enable"
pause
cls
exit
