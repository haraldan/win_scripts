#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

;open Windows terminal
^!t::
    Run "wt.exe"
	;WinWait, ahk_exe OpenConsole.exe	; Without this line WinMaximize will occur before window exist
	;WinMaximize, ahk_exe OpenConsole.exe
    Return
