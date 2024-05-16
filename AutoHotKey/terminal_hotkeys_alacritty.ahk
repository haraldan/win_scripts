#Requires AutoHotkey v2.0+
#SingleInstance
#NoTrayIcon

SetWorkingDir "C:\Users\649dsinev"

;open Alacritty in WSL
^!t::
{
    Run "alacritty.exe" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^!w::
{
    Run "alacritty.exe -e wsl ~ tmux new -A -s default" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^!s::
{
    Run "alacritty.exe -e wsl ~ ssh ds@10.149.108.25 -t 'tmux new -A -s default'" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}