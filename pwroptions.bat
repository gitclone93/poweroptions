@ECHO OFF
title Power Options
:choice
set /P c=Select a Power option [H/S/R/L/O]. Press E to exit.
if /I "%c%" EQU "H" goto :H
if /I "%c%" EQU "S" goto :S
if /I "%c%" EQU "R" goto :R
if /I "%c%" EQU "L" goto :L
if /I "%c%" EQU "O" goto :O
if /I "%c%" EQU "E" goto :E


echo Success! %date% @%time%>pwroptions-logs.txt 


:H
shutdown /h

:S
shutdown /s /t 0

:R
shutdown /r /t 0

:L
rundll32.exe user32.dll,LockWorkStation

:O
logoff

:E
exit

echo Thank you for using Power Options!
echo Made by Karim A.









