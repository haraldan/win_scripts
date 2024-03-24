#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoTrayIcon
#Persistent
SetTimer, HotCorners, 0
return

HotCorners:
CoordMode, Mouse, Screen
WinGetPos, X, Y, Xmax, Ymax, Program Manager  ; get desktop size
T = 1  ; adjust tolerance value if desired
MouseGetPos, MouseX, MouseY
Xcenter := Xmax/2
Ycenter := Ymax/2

CornerTopLeft := (MouseY < T and MouseX < T)
CornerTopRight := (MouseY < T and MouseX > Xmax - T)
CornerBottomLeft := (MouseY > Ymax - T and MouseX < T)
CornerBottomRight := (MouseY > Ymax - T and MouseX > Xmax - T)


if CornerTopLeft
{
	Send, {LWin down}{tab down}
	Send, {LWin up}{tab up}
	Sleep, 600
}
; else if CornerTopLeft
; {
; MouseMove, Xcenter, Ycenter
	; do sth
; }
; ...
return


^F9::
Pause
Suspend
return