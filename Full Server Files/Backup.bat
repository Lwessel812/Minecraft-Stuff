@ECHO OFF
SET itdate=%date:~-10%
SET itdate=%itdate:~6,4%-%itdate:~3,2%-%itdate:~0,2%
SET hour=%time:~0,2%
IF "%hour:~0,1%" == " " SET hour=0%hour:~1,1%
echo Current date: %itdate%-%hour%
xcopy /e /c /h /i /v /r /y /q World Backup\%itdate%-%hour%\
echo Backup Complete (assuming no errors above).