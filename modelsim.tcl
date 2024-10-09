proc external_editor {filename linenumber} {
    exec C:/code/scripts/nvim_open.bat $filename $linenumber &
}
set PrefSource(altEditor) external_editor