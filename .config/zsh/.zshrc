export ZSH="$HOME/.config/zsh/ohmyzsh/"
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.local/bin/statusbar:$PATH"
export PATH="$HOME/.local/bin/resolve/bin:$PATH"

bindkey '^e' beginning-of-line
bindkey '^a' end-of-line


# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache/zsh/history}"

# Read aliasrc 
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

plugins=(
  git
  copypath
)

ZSH_THEME=mh
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
