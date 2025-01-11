# load aliasses, options and plugins
[ -f "${ZDOTDIR}/pluginrc" ] && source "${ZDOTDIR}/pluginrc"
[ -f "${ZDOTDIR}/aliasrc" ] && source "${ZDOTDIR}/aliasrc"
[ -f "${ZDOTDIR}/optionrc" ] && source "${ZDOTDIR}/optionrc"

# Keybindings
## Up and down searching
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down
bindkey -M vicmd '^[[A' history-substring-search-up 
bindkey -M vicmd '^[OA' history-substring-search-up 
bindkey -M vicmd '^[[B' history-substring-search-down
bindkey -M vicmd '^[OB' history-substring-search-down
bindkey -M viins '^[[A' history-substring-search-up 
bindkey -M viins '^[OA' history-substring-search-up 
bindkey -M viins '^[[B' history-substring-search-down 
bindkey -M viins '^[OB' history-substring-search-down

HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="alacritty"

# Path stuff
export PATH="$HOME/.local/bin:${PATH}"
export PATH="${PATH}:$HOME/.cargo/bin"

# allow global installation of npm packages
export npm_config_prefix="$HOME/.local"

# tab completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)--color=auto}"                        # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                                                # automatically find new executables in path
zstyle ':completion:*' menu select

# colours
autoload -U colors && colors	      # colours
autoload -U compinit colors zcalc   # theming

# completion
zstyle :compinstall $ZDOTDIR/.zshrc

autoload -Uz compinit
compinit

export ZELLIJ_AUTO_ATTACH true
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
