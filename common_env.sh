os_type=$(uname -s)
if [[ "$os_type" == "Darwin" ]]; then
  . ~/.dotfiles/rc.macos
  . ~/.dotfiles/aliases.macos
fi
