@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END
setlocal EnableDelayedExpansion

if not exist "%backupJarFolder%" mkdir "%backupJarFolder%"

for /f %%f in ('dir /B %srcJarFolder%') do (
	echo ------ copying %%f start ------

	for /f %%d in (%destJarFileList%) do (
		set destFile=%%d
		set destFileAfterTrim=!destFile:\%%f=!
		if not x!destFileAfterTrim! == x!destFile! (
			echo copy "!destFile!" "%backupJarFolder%"
			copy "!destFile!" "%backupJarFolder%"
		)
	)
	echo ------ copying %%f end ------
)

:END