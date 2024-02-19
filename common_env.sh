# Environment variables.
export LIBRARY_PATH="${LD_LIBRARY_PATH:+LD_LIBRARY_PATH:}/usr/local/opt/openssl/lib/"
export PATH="$HOME/bin:/usr/local/opt/libxml2/bin:$PATH"
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
