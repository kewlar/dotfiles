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
brew install dnsmasq
npm -g install bower
npm -g install less
brew install mariadb
brew tap homebrew/apache
brew install httpd24 --with-mpm-event --with-privileged-ports
# @todo Configure Apache2. See https://echo.co/blog/os-x-1010-yosemite-local-development-environment-apache-php-and-mysql-homebrew
brew tap homebrew/php
brew install php70
brew install php70-apcu-bc
brew install php70-imagick
brew install php70-intl
brew install php70-mongodb
brew install php70-opcache
brew install php70-pdo-dblib
brew install php70-xdebug
brew install blackfireio/blackfire/blackfire-agent
brew install blackfireio/blackfire/blackfire-php70
brew install rabbitmq
brew install bash-completion
brew install awscli
brew install cheat
brew install pngcrush
brew install optipng
brew install rbenv

# Configure PHP
sed -i.bak 's/^[; ]*date.timezone[ ]*=.*/date.timezone = Europe\/Vilnius/' $(brew --prefix)/etc/php/7.0/php.ini
rm $(brew --prefix)/etc/php/7.0/php.ini.bak

# Install Composer and PHPUnit.
brew install composer
composer selfupdate
composer global require phpunit/phpunit
composer global require ongr/ongr-strict-standard
composer global require behat/behat
composer global require pyrech/composer-changelogs
composer global require phpmd/phpmd
composer global require codeception/codeception
export PATH=$PATH:~/.composer/vendor/bin

# Install Symfony Installer.
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony

# Configure Git
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default simple

# Finish up.
mysql.server start
