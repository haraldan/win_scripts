#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon


^F11:: ; Disable touchpad

Run main.cpl ;Open Mouse Properties

Sleep 1500 ;Wait one second

if WinExist("Mouse Properties") 
{
    WinActivate ;Make Mouse Properties the active Window
	Send, {TAB} ;Move to
    Send, {Space} ;Disable touchpad
    Send, {Enter}
}

return

^F12:: ; Enable touchpad

Run main.cpl ;Open Mouse Properties

Sleep 1500 ;Wait one second

if WinExist("Mouse Properties") 
{
    WinActivate ;Make Mouse Properties the active Window
    Send, {Space} ;Disable touchpad
	Send, {Enter}
    
}

return
