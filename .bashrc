# Set up environment variables
# ----------------------------

export PS1="\[\e[0;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\n\$ "
# Harcoded prompt symbol, because \$ somehow does not switch to # under root.
export SUDO_PS1="\[\e[0;31m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\n# "

. ~/.dotfiles/terminal_rc

# Set up command aliases
# ----------------------

. ~/.dotfiles/aliases.bash

# Aliases: Development
alias dev='cd ~/dev'

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
