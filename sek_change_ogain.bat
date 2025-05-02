
setlocal enabledelayedexpansion

set "input=%1"
set "output=%input:~1%"

if "%input:~0,1%"=="-" (echo ogaindown %output% > %2) else (echo ogainup %1 > %2)
 


