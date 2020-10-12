@echo off
call _setupEnv.bat
setlocal EnableDelayedExpansion

IF [%1] == [] GOTO END

for /f %%f in ('dir /S /B /A:-D "%srcWebFolder%"') do (
	set file=%%f
	set file=!file:%srcWebFolder%\=!
	
	for %%d in (%destFolder%) do (
		echo xcopy "%srcWebFolder%\!file!" "%%d\!file!" /Y 
		echo F|xcopy "%srcWebFolder%\!file!" "%%d\!file!" /Y 
	)
)

:END