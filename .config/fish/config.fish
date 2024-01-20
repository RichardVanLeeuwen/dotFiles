if test (tty) = "/dev/tty1"
    sway
end

function fish_greeting
    echo Hello $USER!
end

set TERM "xterm-256color"

alias ...='cd ../..'

alias ls "exa -al --color=always --group-directories-first"

alias addall='git add .'
alias branch='git branch'
alias push='git push origin'
alias pull='git pull origin'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

set -x PATH $PATH $HOME/.local/bin  
set -x PATH $PATH /usr/bin/nvim
set -x PATH $PATH $HOME/.cargo/bin  
set -x PATH $PATH $HOME/repositories/flutter/bin
set ZELLIJ_AUTO_ATTACH true

set zj_sessions (zellij ls | count)
if set -q ZELLIJ
else
    if test (zellij ls | count) -gt 0
        zellij a -c
    else
        zellij
    end
end

starship init fish | source
