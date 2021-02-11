@ECHO off

GOTO input
---------------------------
Get input from user.
0 - wacom
1 - gaomon
2 - just launch wacom services
---------------------------

:input

SET /P input="Select mode (0 - wacom, 1 - gaomon, 2 - just launch wacom services): "
ECHO.
IF %input%==0 (
GOTO wacom
) ELSE IF %input%==1 (
GOTO gaomon
) ELSE IF %input%==2 (
CALL :stopWacomService
GOTO startWacomService
) ELSE (
GOTO input
)

:gaomon
CALL :stopWacomService 
COPY /V /Y %~p0\gaomon\wintab32.dll %systemroot%\System32\ > nul 2>&1
IF NOT %errorlevel%==0 (
ECHO "Stop all programs using a driver first."
) ELSE ( ECHO Done!)
GOTO end

:wacom
CALL :stopWacomService
COPY /V /Y %~p0\wacom\wintab32.dll %systemroot%\System32\ > nul 2>&1
IF NOT %errorlevel%==0 (
ECHO "Stop all programs using a driver first."
GOTO end
)
CALL :stopWacomService
CALL :startWacomService
ECHO Done!
GOTO end

:end
PAUSE

:stopWacomService
net stop WTabletServicePro > nul 2>&1
GOTO return

:startWacomService
net start WTabletServicePro > nul 2>&1
GOTO return

:return