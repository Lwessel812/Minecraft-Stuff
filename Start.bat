@echo off
title server
color 0A
prompt [server]:
cls

:start
echo loading server...
java -Xmx5G -Xms4G -jar server.jar nogui
cls

:choice
set /P a=do you want to restart[Y/N]?
if /I "%a%" EQU "Y" goto :restart
if /I "%a%" EQU "N" goto :stop
goto :choice


:restart
cls
call Backup.bat
echo server will restart
TIMEOUT /T 5
cls
goto :start

:stop

cls
call Backup.bat
echo closing server
TIMEOUT /T 5
exit