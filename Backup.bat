@ECHO OFF
SET itdate=%date:~-10%
SET itdate=%itdate:~6,4%-%itdate:~3,2%-%itdate:~0,2%
SET hour=%time:~0,2%
IF "%hour:~0,1%" == " " SET hour=0%hour:~1,1%
echo Current date: %itdate%-%hour%
xcopy /e /c /h /i /v /r /y /q world Backup\%itdate%-%hour%-world\
xcopy /e /c /h /i /v /r /y /q world_nether Backup\%itdate%-%hour%-world_nether\
xcopy /e /c /h /i /v /r /y /q world_the_end Backup\%itdate%-%hour%-world_the_end\
echo Backup Complete (assuming no errors above).