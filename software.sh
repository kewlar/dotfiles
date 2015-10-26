#!/bin/bash
#
#

# (Assume Ruby is already installed.)

# Make sure Homebrew is installed.
if which brew > /dev/null
then
  # Do nothing. Or, better, learn proper Bash scripting.
  echo "Homebrew is already installed."
else
  # Install Homebrew.
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Install the software.
brew install git
brew install node
npm -g install bower
npm -g install less
brew install mysql
brew tap homebrew/php
brew install php56
brew install php56-apcu
brew install php56-intl
brew install php56-mcrypt
brew install bash-completion

# Install Composer and PHPUnit.
brew install composer
composer selfupdate
composer global require phpunit
export PATH=$PATH:~/.composer/vendor/bin

# Install Symfony Installer.
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony

# Configure Git
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default simple

# Finish up.
mysql.server start
