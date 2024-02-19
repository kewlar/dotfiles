#!/bin/sh

# Define dotfiles directory (modify as needed)
DOTFILES_DIR=~/.dotfiles

# List of configuration files
CONFIG_FILES=".bash_profile .bashrc .zshrc .vimrc .gitignore_global"

# Backup existing configuration files and create symlinks
for file in $CONFIG_FILES; do
  if [ -f "$HOME/$file" ]; then
    mv "$HOME/$file" "$HOME/$file.backup"
    echo "Backed up $HOME/$file to $HOME/$file.backup"
  fi
  ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
  echo "Created symlink for $HOME/$file"
done
