@echo off
title server
color 0A
prompt [server]:
cls

:start
echo loading server...
java -Xms6G -Xmx6G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar server.jar -nogui
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