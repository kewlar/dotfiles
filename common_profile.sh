os_type=$(uname -s)
if [[ "$os_type" == "Darwin" ]]; then
  . ~/.dotfiles/rc.macos
fi

export PATH="$PATH:/home/kewlar/.local/bin"

if [ -f ~/.dotfiles/secrets.sh ]; then
  . ~/.dotfiles/secrets.sh
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
