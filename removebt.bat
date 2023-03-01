@echo off
echo Run as admin account
echo This will take ownership of the c:\$Windows.~BT folder and delete it to free up disk space.
echo This is the OS upgrade backup folder.
echo You will not be able to uninstall the OS upgrade and go back to previous version!!!
pause
takeown /F C:\$Windows.~BT\* /R /A 
icacls C:\$Windows.~BT\*.* /T /grant administrators:F 
rmdir /S /Q C:\$Windows.~BT\