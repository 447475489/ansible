@echo off
setlocal enabledelayedexpansion

rem set host_list=192.168.0.1 192.168.0.2 192.168.0.3
for /f %%i in (ip.txt) do (
rem for %%i in (%host_list%) do (
rem for %%i in (%host_list%) do (
	ping -n 1 %%i >nul
    if !errorlevel! equ 0 (
		echo %%i is online >> online.txt
    ) else (
		echo %%i is offline >> offline.txt
    )
)
endlocal
pause
exit