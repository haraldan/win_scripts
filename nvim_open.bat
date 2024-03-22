@ECHO OFF
start wt -w 3 new-tab powershell -Noexit "C:/code/scripts/wsl_launch.ps1" %1 %2
#cmd /k