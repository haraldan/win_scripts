#Requires AutoHotkey v2.0+
#SingleInstance
TraySetIcon "icons/terminal_white.ico", 1, true

^<!t::
{
	Run "wezterm-gui.exe", EnvGet("USERPROFILE"), , &PID
	WinWait 'ahk_pid ' PID
	Sleep 200
	WinActivate 'ahk_pid ' PID
}

^<!w::
{
	Run "wezterm-gui.exe -e wsl ~ tmux new -A -s default", , , &PID
	WinWait 'ahk_pid ' PID
	Sleep 200
	WinActivate 'ahk_pid ' PID
}

^<!s::
{
	if !ProcessExist("vcxsrv.exe")
		Run A_ScriptDir "\..\config.xlaunch"
	Run "wezterm-gui.exe -e powershell.exe ssh -Y daniel@192.168.178.16 -t 'tmux new -A -s default'", , , &PID
	WinWait 'ahk_pid ' PID
	Sleep 200
	WinActivate 'ahk_pid ' PID
}
