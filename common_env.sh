#!/bin/bash
#
#

# Environment variables.
# export PATH="~/.composer/vendor/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:~/.rbenv/versions/`cat ~/.rbenv/version`/bin:$PATH"
export PATH="~/.composer/vendor/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:`brew --prefix qt@5.5`/bin:$PATH"
export PATH="~/.yarn/bin:~/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export LANG="en_US.UTF-8"

# Aliases
alias diff='colordiff -u'
alias sfp='sf --env=prod'
alias sfpcl='sf cache:clear --env=prod'
alias sfclc='rm -rf var/cache/test;rm -rf var/cache/prod;rm -rf var/cache/dev'
alias hosts='sudo vi /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'
alias cdp='cd ~/dev/ksd/pim/'
alias cda='cd ~/dev/ksd/aikido/'
alias cde='cd ~/dev/ksd/elfas/'
alias cdb='cd ~/dev/ksd/buscador/'
alias cdq='cd ~/dev/ksd/buscador-query/'
alias cdd='cd ~/dev/ksd/docker/'
alias cdx='cd ~/Exercism/'
alias mcd='mkdir -p "$1" && cd "$1"'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.dotfiles/secrets.sh ]; then
  source ~/.dotfiles/secrets.sh
fi
