#!/bin/bash
#
#

# Set up environment variables
export PATH=$PATH:~/.composer/vendor/bin

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
alias sf='php app/console'
alias dev='cd ~/dev'
