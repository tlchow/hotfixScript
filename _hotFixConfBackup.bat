@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion
ECHO %srcConfFolder%
for /f %%f in ('dir /S /B /A:-D "%srcConfFolder%"') do (
	set file=%%f
	set file=!file:%srcConfFolder%\=!
	set break=
	for %%d in (%destConfFolder%) do if not defined break (
		echo xcopy "%%d\!file!" "%backupConfFolder%\!file!" /Y 
		echo F|xcopy "%%d\!file!" "%backupConfFolder%\!file!" /Y 
		set break=yes
	)
)

:END