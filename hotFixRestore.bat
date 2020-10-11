@echo off
call _logUser.bat HotfixRestore
echo calling _hotFixJarRestore.bat %uname% >> log\hotFix.log 2>&1
call _hotFixJarRestore.bat %uname% >> log\hotFix.log 2>&1
echo calling hotFixWeb.batBackup %uname% >> log\hotFix.log 2>&1
call _hotFixWebRestore.bat %uname% >> log\hotFix.log 2>&1

