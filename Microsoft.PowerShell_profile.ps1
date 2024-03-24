Set-Alias -Name vim -Value nvim
function ssh-ds {ssh ds@jarnold649-p350 -t 'env TERM=screen-256color tmux attach || env TERM=screen-256color tmux'}
function wsl-default {wsl ~ tmux new -A -s default}
function wsl-cmd {wsl ~ tmux new -A -s cmd}
