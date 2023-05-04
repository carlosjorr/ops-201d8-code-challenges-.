

# Script:   ops challenge08                 
# Author:   carlos rojas                    
# Date of latest revision:      
# Purpose: automate backup



@echo off
set SOURCE=C:\Users\j.thompson\Desktop\work
set DESTINATION=A:\backup\work
set LOGFILE=%DESTINATION%\backup.log

if not exist "%DESTINATION%" mkdir "%DESTINATION%"

echo Copying files from %SOURCE% to %DESTINATION%...
echo This may take some time depending on the size of the data.

robocopy "%SOURCE%" "%DESTINATION%" /E /COPYALL /R:3 /W:10 /MT:32 /LOG+:"%LOGFILE%"

echo Backup complete.
pause
