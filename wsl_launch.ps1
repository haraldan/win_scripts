$filename_win=$args[0]
if ($args[1] -eq $null){
	$linenumber='1'
} else {
	$linenumber=$args[1]
}

$filename = ($filename_win.replace('\','/') -replace('C:/','/mnt/c/'))

$dir_name = Split-Path($filename)
$dir_name = $dir_name.replace('\','/')

wsl --cd $dir_name nvim +$linenumber $filename
#Write-Host wsl --cd $dir_name nvim +$linenumber $filename