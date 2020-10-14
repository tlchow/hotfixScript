@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion

for /f %%f in ('dir /S /B /A:-D "%srcWebFolder%"') do (
	set file=%%f
	set file=!file:%srcWebFolder%\=!
	set break=
	for %%d in (%destWebFolder%) do if not defined break (
		echo xcopy "%%d\!file!" "%backupWebFolder%\!file!" /Y 
		echo F|xcopy "%%d\!file!" "%backupWebFolder%\!file!" /Y 
		set break=yes
	)
)

:END