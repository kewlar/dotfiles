os_type=$(uname -s)

if [[ "$os_type" == "Darwin" ]]; then
  export LIBRARY_PATH="${LD_LIBRARY_PATH:+LD_LIBRARY_PATH:}/usr/local/opt/openssl/lib/"
  export PATH="$HOME/bin:/usr/local/opt/libxml2/bin:$PATH"
  export LANG="en_US.UTF-8"
fi

export PATH="$PATH:/home/kewlar/.local/bin"

if [ -f ~/.dotfiles/secrets.sh ]; then
  source ~/.dotfiles/secrets.sh
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
