@echo off
if not exist "log" mkdir log

call _logUser.bat HotfixRestore
echo calling _hotFixJarRestore.bat %uname% >> log\hotFix.log 2>&1
call _hotFixJarRestore.bat %uname% >> log\hotFix.log 2>&1
echo calling _hotFixWebRestore.bat %uname% >> log\hotFix.log 2>&1
call _hotFixWebRestore.bat %uname% >> log\hotFix.log 2>&1
echo calling _hotFixConfRestore.bat %uname% >> log\hotFix.log 2>&1
call _hotFixConfRestore.bat %uname% >> log\hotFix.log 2>&1

