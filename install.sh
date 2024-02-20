#!/bin/sh

# Define dotfiles directory (modify as needed)
DOTFILES_DIR=~/.dotfiles

# List of configuration files
CONFIG_FILES=".bash_profile .bashrc .zprofile .zshrc .vimrc .gitignore_global"

# Backup existing configuration files and create symlinks
for file in $CONFIG_FILES; do
  ln -s --backup=numbered "$DOTFILES_DIR/$file" "$HOME/$file"
done
