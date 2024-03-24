#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#NoTrayIcon
Menu, Tray, Icon, icons/mouse.ico
#Persistent

MButton:: ; send active window to back
	MouseGetPos, ,, OutputVarWin
	WinSet Bottom,, ahk_id %OutputVarWin%
	MouseGetPos, ,, OutputVarWin
	WinActivate ahk_id %OutputVarWin%
Return
