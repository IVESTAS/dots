# autoload -U colors && colors
PROMPT='%F{white}[%m:%F{blue}%~%f]%f%F{white}$ %f'
#unsetopt PROMPT_SP

setopt autocd	
stty stop undef		# Disable ctrl-s to freeze terminal.

bindkey '^e' beginning-of-line
bindkey '^a' end-of-line

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.cache/zsh/history"
setopt inc_append_history

# Read aliasrc 
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


