@echo off
if not exist "log" mkdir log

call _logUser.bat hotFix
echo calling _hotFixJar.bat %uname% >> log\hotFix.log 2>&1
call _hotFixJar.bat %uname% >> log\hotFix.log 2>&1
echo calling _hotFixWeb.bat %uname% >> log\hotFix.log 2>&1
call _hotFixWeb.bat %uname% >> log\hotFix.log 2>&1
echo calling _hotFixConf.bat %uname% >> log\hotFix.log 2>&1
call _hotFixConf.bat %uname% >> log\hotFix.log 2>&1

