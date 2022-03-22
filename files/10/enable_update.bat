@echo off

set path_tf=%~dp0

net start wuauserv

cls

start %path_tf%\sub2.reg

net start wuauserv

echo You need to restart PC!!

set /p question="Restart now? (y/n): "
if "%question%"=="y" (
    shutdown /r /t 0 >NUL
) else (
    echo OK
    timeout /t 3 /nobreak >NUL
    exit
)