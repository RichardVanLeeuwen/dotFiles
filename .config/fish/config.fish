if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    echo Hello $USER !
end

set TERM "xterm-256color"

alias ...='cd ../..'

alias ls "exa -al --color=always --group-directories-first"

alias addall='git add .'
alias branch='git branch'
alias push='git push origin'
alias pull='git pull origin'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

starship init fish | source
