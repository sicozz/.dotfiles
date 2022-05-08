#!/bin/sh
# export QT_QPA_PLATFORMTHEME="qt5ct"
# export EDITOR=/usr/bin/nvim
# export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Global variables
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export EDITOR=/usr/local/bin/nvim
# export DISABLE_AUTO_TITLE='true'            # tmuxp requires it idk why
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# startx
if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then
    exec startx
fi
