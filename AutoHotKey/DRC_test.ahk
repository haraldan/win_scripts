#Requires AutoHotkey v2.0
#SingleInstance
#InputLevel 1

#z::{
RunWait "C:\code\scripts\sek_change_ogain.bat -3 COM8"
SendEvent "^#{Up}"
Sleep 10
SendEvent "^#{Up}"
Sleep 10
SendEvent "^#{Up}"
}
#x::{
RunWait "C:\code\scripts\sek_change_ogain.bat 3 COM8"
SendEvent "^#{Down}"
Sleep 10
SendEvent "^#{Down}"
Sleep 10
SendEvent "^#{Down}"

}

