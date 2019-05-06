@echo off
title minecraft-server-1.8.3
color 0A
prompt [server]:
cls

:start
echo loading server...
java -Xms6G -Xmx6G -jar server.jar nogui
cls

:choice
set /P a=do you want to restart[Y/N]?
if /I "%a%" EQU "Y" goto :restart
if /I "%a%" EQU "N" goto :stop
goto :choice


:restart
cls
echo server will restart
TIMEOUT /T 5
cls
goto :start

:stop

cls
echo closing server
TIMEOUT /T 5
exit