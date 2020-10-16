@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion

for /f %%f in ('dir /S /B /A:-D "%srcConfFolder%"') do (
	set file=%%f
	set file=!file:%srcConfFolder%\=!
	
	for %%d in (%destConfFolder%) do (
		echo xcopy "%srcConfFolder%\!file!" "%%d\!file!" /Y 
		echo F|xcopy "%srcConfFolder%\!file!" "%%d\!file!" /Y 
	)
)

:END