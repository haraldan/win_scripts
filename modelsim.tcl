proc external_editor {filename linenumber} {
    exec nvim_open.bat $filename $linenumber &
}
set PrefSource(altEditor) external_editor