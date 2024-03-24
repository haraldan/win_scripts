#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

;play/pause
^\::
Send {Media_Play_Pause}
return

;enqueue in foobar
^]::
  this_path := Selected_Files()
  run, "C:\Program Files (x86)\foobar2000\foobar2000.exe" /add "%this_path%" 
Return

Selected_Files()
{
  ; Handles Explorer
  IfWinActive, ahk_class CabinetWClass
  {
    for window in ComObjCreate("Shell.Application").Windows
      if window.HWND = WinExist("A")
        this_window := window
    
    ; If multiple Items selected
    if(this_window.Document.SelectedItems.Count > 1)
    {
      these_files := ""
      for item in this_window.Document.SelectedItems
        these_files .= item.Path . "`n"
      
      return these_files
    }
    else
      return this_window.Document.FocusedItem.Path
  }
  
  ; Handles Desktop
  if(WinActive("ahk_class Progman") || WinActive("ahk_class WorkerW"))
  {
    ControlGet, selectedFiles, List, Selected Col1, SysListView321, A
    
    ; If multiple Items selected
    if InStr(selectedFiles, "`n")
    {
      these_files := ""
      Loop, Parse, selectedFiles, `n, `r
        these_files .= A_Desktop . "\" . A_LoopField . "`n"
    
      return these_files
    }
    else
      return A_Desktop . "\" . selectedFiles
  }
  else
    return false
}