#!/bin/bash
#
#

# Environment variables.
# export PATH="~/.composer/vendor/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:~/.rbenv/versions/`cat ~/.rbenv/version`/bin:$PATH"
export PATH="~/.composer/vendor/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

# Aliases
alias diff='colordiff -u'
alias sfp='sf --env=prod'
alias sfpcl='sf cache:clear --env=prod'
alias sfclc='rm -rf var/cache/test;rm -rf var/cache/prod;rm -rf var/cache/dev'
alias hosts='sudo vi /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'
alias cdp='cd ~/dev/ksd/pim/'
alias cda='cd ~/dev/ksd/aikido/'
alias mcd='mkdir -p "$1" && cd "$1"'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.dotfiles/secrets.sh ]; then
  source ~/.dotfiles/secrets.sh
fi
