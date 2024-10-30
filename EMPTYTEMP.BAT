@ECHO OFF
COLOR 17
CLS

setlocal enabledelayedexpansion

set loop=2

:loop

ECHO LOCATING TEMP FOLDER.
timeout /t 1 /nobreak>nul
cls

ECHO LOCATING TEMP FOLDER..
timeout /t 1 /nobreak>nul
cls

ECHO LOCATING TEMP FOLDER...
timeout /t 1 /nobreak>nul
cls

set /A loop=loop-1

if %loop% gtr 0 goto loop


CD %TEMP%
ECHO %CD%
ECHO FILE LOCATION FOUND
ECHO EMPTING TEMP FOLDER
ping localhost>nul
del %temp% /F /Q /S
pause
