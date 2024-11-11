#!/bin/sh

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.local/bin/statusbar:$PATH"
export PATH="$HOME/.local/bin/resolve/bin:$PATH"

# Read aliasrc 
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Default apps
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="foot"
export BROWSER="librewolf"
export SUDO_EDITOR=/usr/bin/vim

#export QT_QPA_PLATFORMTHEME="qt5ct"

#export QT_QPA_PLATFORM=wayland 
#export XDG_CURRENT_DESKTOP=sway
#export XDG_SESSION_DESKTOP=sway
#export XDG_CURRENT_SESSION_TYPE=wayland
#export QT_ENABLE_HIGHDPI_SCALING=0
#export GDK_BACKEND="wayland,x11"
#export MOZ_ENABLE_WAYLAND=1

# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export HISTSIZE=1000         # Number of commands to keep in memory during the session
export HISTFILESIZE=2000

export HISTFILE=~/.bash_history
export HISTTIMEFORMAT="%F %T "

#PS1='\u@\[\033[34m\]\h\[\033[0m\]:[\W]# '
#PS1='\u@\[\033[34m\]\h\[\033[0m\]:[\W]\$ '
#PS1='\u@\h:\w\$ '
PS1='\u@\[\033[34m\]\h\[\033[0m\]:\[\033[37m\][\W]\[\033[0m\]\$ '

# /u is username
# \[\033[34m\]: Blue color for the hostname.
# \h: The hostname (short version).
# \[\033[0m\]: Resets the color back to normal.
# \W: This shows only the last component of the current working directory 
# (i.e., just the current directory name, not the full path).
#

# Blue: \033[34m
# Red: \033[31m
# Green: \033[32m
# Yellow: \033[33m
# Magenta: \033[35m
# Cyan: \033[36m
# White: \033[37m
# Reset: \033[0m
