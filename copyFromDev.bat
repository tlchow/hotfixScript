@Echo OFF
call _setupEnv.bat

for /f %%f in (%devFileList%) do (
	echo xcopy "%devFolder%\%%f" "%srcWebFolder%\%%f" /Y 
	ECHO F|xcopy "%devFolder%\%%f" "%srcWebFolder%\%%f" /Y 

)
