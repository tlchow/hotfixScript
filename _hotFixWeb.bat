@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion

for /f %%f in ('dir /S /B /A:-D "%srcWebFolder%"') do (
	set file=%%f
	set file=!file:%srcWebFolder%\=!
	
	for %%d in (%destWebFolder%) do (
		echo xcopy "%srcWebFolder%\!file!" "%%d\!file!" /Y 
		echo F|xcopy "%srcWebFolder%\!file!" "%%d\!file!" /Y 
	)
)

:END