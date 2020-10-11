@echo off
call _logUser.bat HotfixBackup
echo calling _hotFixJarBackup.bat %uname% >> log\HotFix.log
call _hotFixJarBackup.bat %uname% >> log\HotFix.log 2>&1
echo calling _hotFixWeb.bat %uname% >> log\HotFix.log
call _hotFixWebBackup.bat %uname% >> log\HotFix.log 2>&1

