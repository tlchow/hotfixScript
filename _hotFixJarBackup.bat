@Echo Off
call _setupEnv.bat
IF [%1] == [] GOTO END

if not exist "%backupJarFolder%" mkdir "%backupJarFolder%"

for /f %%f in ('dir /B %srcJarFolder%') do (
    for /f "tokens=*" %%F in ('dir /S /B /A:-D "%destFolder%\%%f"') Do (
		echo copy "%%F" "%backupJarFolder%"
        copy "%%F" "%backupJarFolder%"
    )
)
:END