#!/bin/bash
#
#

# Set up environment variables
# ----------------------------

export PS1="\[\e[0;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\n\$ "
# Harcoded prompt symbol, because \$ somehow does not switch to # under root.
export SUDO_PS1="\[\e[0;31m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\n# "

source ~/.dotfiles/common_env.sh

# Set up command aliases
# ----------------------

# Aliases: Filesystem
alias l='ls -lAGpFh'      # Pretty `ls` output - 1 entry per line, almost all files, coloured output, identified file types, human readable sizes.
alias ..='cd ..'          # Go up a level
alias ...='cd ../..'      # Go up two levels
alias ....='cd ../../..'  # Go up three levels
alias mkdir='mkdir -p'    # Make `mkdir` recursive
alias md='mkdir'          # md === mkdir

# Aliases: Helpers
alias clr='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd)."'
alias grep='grep --color=auto'

# Aliases: Development
alias dev='cd ~/dev'

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
