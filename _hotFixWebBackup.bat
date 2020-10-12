@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion

for /f %%f in ('dir /S /B /A:-D "%srcWebFolder%"') do (
	set file=%%f
	set file=!file:%srcWebFolder%\=!
	for %%d in (%destWebFolder%) do (
		echo xcopy "%%d\!file!" "%bckupWebFolder%\!file!" /Y 
		echo F|xcopy "%%d\!file!" "%bckupWebFolder%\!file!" /Y 
		break
	)
)

:END