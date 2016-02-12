#!/bin/bash
#
#

# Environment variables.
export PATH=~/.composer/vendor/bin:~/bin:/usr/local/sbin:$PATH

# Aliases
alias sfp='sf --env=prod'
alias sfpcl='sf cache:clear --env=prod'
alias hosts='sudo vi /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
