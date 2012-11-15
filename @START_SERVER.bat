@echo off
echo Starting MySQL database. Please wait 5-10 seconds.
start /MIN /D.\MySQL\ MySQL1.bat
ping 127.0.0.1 -n 15 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo.
echo Executing spawn script...
.\MySQL\bin\mysql1 --user=root --password=root --host=127.0.0.1 --port=3316 --database=hivemind --execute="call pMain()"
ping 127.0.0.1 -n 5 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo.
echo Starting server...
start .\Expansion\beta\arma2oaserver.exe -ip=208.110.84.20 -port=2312 -mod=@hive;@DayZ;@DayZ_Namalsk -name=cfgdayz -config=cfgdayz\server.cfg -cfg=cfgdayz\arma2.cfg -profiles=cfgdayz
.\MySQL\cecho {0A}	OK.{07} 
echo.
echo.
echo.
echo.
echo.
echo.
.\MySQL\cecho {0B}Launcher created by Pwnoz0r, Modified by Stapo.{07}
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo.
.\MySQL\cecho {0A}Leaving le launcher...{07}
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo.
echo.
exit