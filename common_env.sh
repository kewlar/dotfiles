#!/bin/bash
#
#

# Environment variables.
export PATH="$HOME/bin:`brew --prefix qt@5.5`/bin:$HOME/Library/Python/3.7/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/opt/libxml2/bin:$PATH"
export LANG="en_US.UTF-8"

# Aliases
alias diff='colordiff -u'
alias hosts='sudo vi /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'
alias cdx='cd ~/Exercism/'
mcd() {
  mkdir -p "$1"
  cd "$1"
}

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# secrets
if [ -f ~/.dotfiles/secrets.sh ]; then
  source ~/.dotfiles/secrets.sh
fi
