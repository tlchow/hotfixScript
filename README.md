# hotfixScript
Windows Hotfix Script for Websphere

Edit _setupEnv.bat to config the path, support multiple destination (Seperated by ";")

For Jar file, it will find and replace all the jar file in destination and only need to place the jar file in "srcJarFolder" folder
  
For Web file, need to place the web file in "srcWebFolder" with full folder structure and it will copy to destination in same folder structure

destJarFileList can be generated by using 'dir /S /B /A:-D' in all related servers 

Limitation: Jar copy will have problem if it contains folder with the "jar filename"