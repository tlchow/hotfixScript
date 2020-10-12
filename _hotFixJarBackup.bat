@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END

if not exist "%backupJarFolder%" mkdir "%backupJarFolder%"

for /f %%f in ('dir /B %srcJarFolder%') do (
	for %%d in (%destFolder%) do (
		for /f "tokens=*" %%F in ('dir /S /B /A:-D "%%d\%%f"') Do (
			echo copy "%%F" "%backupJarFolder%"
			copy "%%F" "%backupJarFolder%"
		)
		break
	)
)
:END