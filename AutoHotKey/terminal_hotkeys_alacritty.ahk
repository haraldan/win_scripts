#Requires AutoHotkey v2.0+
#SingleInstance
#NoTrayIcon

;open Alacritty
^!t::
{
    Run "alacritty.exe -e wsl ~ tmux new -A -s default" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 100
    WinActivate 'ahk_pid ' PID
}
