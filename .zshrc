ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugin declarations
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completion
autoload -U compinit && compinit

# Keybindings
## Enable vi mode
bindkey -v
## Up and down searching
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# History deduplication
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
DISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Completion colorization
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# Zoxide completion
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

export EDITOR="nvim"
export TERM="alacritty"

# Path stuff
export PATH="${PATH}:$HOME/.local/bin"
export PATH="${PATH}:$HOME/.cargo/bin"

# Personal aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias please='sudo $(fc -ln -1)'
alias ls="exa -ag --color=always --group-directories-first"
alias vi="nvim"

alias setTheme="source ~/.config/scripts/setTheme.sh"

export ZELLIJ_AUTO_ATTACH true
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
