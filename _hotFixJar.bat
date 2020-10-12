@echo off
call _setupEnv.bat
IF [%1] == [] GOTO END

for /f %%f in ('dir /B %srcJarFolder%') do (
	for %%d in (%destFolder%) do (
		for /f "tokens=*" %%F in ('dir /S /B /A:-D "%%d\%%f"') Do (
		echo copy "%srcJarFolder%\%%f" "%%F" 
			copy "%srcJarFolder%\%%f" "%%F" 
		)
	)
)
:END