@Echo OFF
call _setupEnv.bat
setlocal EnableDelayedExpansion

IF [%1] == [] GOTO END

for /f %%f in ('dir /S /B /A:-D "%srcWebFolder%"') do (
	set file=%%f
	set file=!file:%srcWebFolder%\=!
	echo xcopy "%destFolder%\!file!" "%bckupWebFolder%\!file!" /Y 
	ECHO F|xcopy "%destFolder%\!file!" "%bckupWebFolder%\!file!" /Y 
)

:END