#!/bin/bash
#
#

# Set up symlinks in home directory to dotfiles
ln -svi .dotfiles/.bash_profile ~/.bash_profile
ln -svi .dotfiles/.bashrc ~/.bashrc
ln -svi .dotfiles/.zshrc ~/.zshrc
ln -svi .dotfiles/.vimrc ~/.vimrc

# Set up Git
ln -svi .dotfiles/.gitignore_global ~/.gitignore_global
