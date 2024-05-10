@ECHO OFF
start alacritty.exe -e powershell "C:/code/scripts/wsl_launch.ps1" %1 %2
::cmd /k