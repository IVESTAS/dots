# Default apps
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="librewolf"
export SUDO_EDITOR=/usr/bin/vim

# PATHS
#export PATH= ~/.local/bin/:$PATH
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.local/bin/statusbar:$PATH"
export ZSH="$HOME/.config/zsh/ohmyzsh/"

# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Disable files
export LESSHISTFILE=-
#export _JAVA_OPTIONS=-

# Fixing paths
#export Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST


# Sources
#source "$HOME/.local/share/cargo/env"
#source SVDIR=~/.config/service
