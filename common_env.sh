#!/bin/bash
#
#

# Environment variables.
export PATH=~/.composer/vendor/bin:~/bin:/usr/local/sbin:$PATH

# Aliases
alias sfp='sf --env=prod'
alias sfpcl='sf cache:clear --env=prod'
alias sfclc='rm -rf var/cache/test;rm -rf var/cache/prod;rm -rf var/cache/dev'
alias hosts='sudo vi /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.dotfiles/secrets.sh ]; then
  source ~/.dotfiles/secrets.sh
fi
