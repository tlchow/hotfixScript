@Echo Off
call _setupEnv.bat
IF [%1] == [] GOTO END

for /f %%f in ('dir /B %srcJarFolder%') do (
    for /f "tokens=*" %%F in ('dir /S /B /A:-D "%destFolder%\%%f"') Do (
	echo copy "%backupJarFolder%\%%f" "%%F"
        copy "%backupJarFolder%\%%f" "%%F"
    )
)
:END