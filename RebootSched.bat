@echo off
REM reboottime must be in hh:mm format
set reboottime=22:00

for /f "tokens=1,2 delims=:" %%a in ('echo %reboottime%') do (
    set /a reboothour=%%a*3600
    set /a rebootmin=%%b*60
)

set /a rebootsec="%reboothour% + %rebootmin%"
for /f "tokens=1,2,3 delims=:" %%a in ('echo %time%') do (
    set /a hour=%%a*3600
    set /a minute=%%b*60
    set sec=%%c
)

set sec=%sec:~0,2%
set /a totsec="%hour% + %minute% + %sec%"
set /a remsec="%rebootsec% - %totsec%"
if %remsec% leq 0 set /a remsec="%remsec% +86400"
shutdown /r /t %remsec%
exit
REM ==================================
REM Created by Alexandra, free for use however you see fit.
REM ==================================