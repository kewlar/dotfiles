#!/bin/bash

# Make sure Homebrew is installed.
if ! which brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install the software.
brew install git
brew install node
brew install dnsmasq
brew install rabbitmq
brew install bash-completion
brew install awscli
brew install cheat
brew install pngcrush
brew install optipng
brew install rbenv
brew install unrar
brew install jq
brew install colordiff

# Configure Git
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default simple
