#Requires AutoHotkey v2.0+
#SingleInstance
TraySetIcon "icons/terminal_white.ico",1,true

SetWorkingDir "C:\Users\649dsinev"

;open Alacritty in WSL
^<!t::
{
    Run "wezterm-gui.exe" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^<!w::
{
    Run "wezterm-gui.exe -e wsl ~ tmux new -A -s default" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^<!s::
{
    Run "wezterm-gui.exe -e powershell.exe ssh ds@dsinev649-p520 -t 'tmux new -A -s Firmware'" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}
