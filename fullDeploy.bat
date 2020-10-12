@echo off
if not exist "log" mkdir log

echo Please remind to move all those hofix file
call _logUser FullDeploy
