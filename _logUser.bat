@ECHO OFF
SET /P uname=Doing %1, Please enter your name or reference: 
ECHO [%date%, %time%] -------------------------------------------------------------------------------------------  %uname% doing the %1 >> log\hotFix.log 2>&1
