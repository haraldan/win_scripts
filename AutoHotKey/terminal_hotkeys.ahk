#Requires AutoHotkey v2.0+
#SingleInstance
#NoTrayIcon

;open Windows terminal
^!t::
{
    Run "wt.exe"
}
