@echo off
rem Disables the display of executed commands---

set count=10
rem Counter in seconds before the process resumes---

.\Tools\PsSuspend GTA5
rem Suspension of the GTA5.exe process

:dec
rem Start of the decrement loop---
set /a count = %count% - 1
rem Decrement of 1 to the "count" variable---


if %count%==0 goto rep
rem End of the loop and switch to the "rep" loop when the counter reaches zero---

timeout /t 01>nul
rem Pause for 1 second---

goto dec
rem If the counter has not reached zero, return to the beginning of the "dec" loop---



:rep
.\Tools\PsSuspend -r GTA5
rem Resume GTA5.exe process---


exit
rem EOF---