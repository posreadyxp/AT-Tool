@echo off

set path_tf=%~dp0

net stop wuauserv

cls

start %path_tf%\sub.reg

net stop wuauserv

echo You need to restart PC!!

set /p question="Restart now? (y/n): "
if "%question%"=="y" (
    shutdown /r /t 0 >NUL
) else (
    echo OK
    timeout /t 3 /nobreak >NUL
    exit
)