@echo off

set _ip=192.168.10.10

echo 1) Listing interfaces
netsh interface show interface

echo 2) Setting ethernet interface IP
netsh int ip set address "Ethernet" static 192.168.10.11 255.255.255.0 192.168.10.1

echo 3) Waiting for interface to go online
timeout 5

echo.
echo 4) Checking if raspberry (%_ip%) is alive
echo.

ping %_ip% -n 1 -4 | find /i "TTL=">nul

if errorlevel 1 (
    echo RESULT:
    echo Raspberry is offline (%errorlevel%)
) else ( 
    echo RESULT:
    echo Raspberry is online, hurray! (%errorlevel%)
)

echo.

pause