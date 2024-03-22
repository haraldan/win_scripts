proc external_editor {filename linenumber} {
    exec nvim_open.bat $filename &
}