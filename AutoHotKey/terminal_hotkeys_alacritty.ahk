#Requires AutoHotkey v2.0+
#SingleInstance
#NoTrayIcon

SetWorkingDir "C:\Users\649dsinev"

;open Alacritty in WSL
^<!t::
{
    Run "alacritty.exe" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^<!w::
{
    Run "alacritty.exe -e wsl ~ tmux new -A -s default" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}

^<!s::
{
    Run "alacritty.exe -e powershell.exe ssh ds@dsinev649-p520 -t 'tmux new -A -s Firmware'" ,,, &PID
	WinWait 'ahk_pid ' PID
	sleep 200
    WinActivate 'ahk_pid ' PID
}


#HotIf WinActive("alacritty")

+Ins::
+RButton::
{
    A_Clipboard := StrReplace(A_Clipboard, "`r`n", "`n")
    Send("^+v")
}
return

#HotIf
