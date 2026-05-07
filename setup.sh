#! /bin/bash

mkdir -p ~/.config

# the -p means parents.
#
# It does two useful things:
#
# Creates parent directories automatically if they don't exist.
# Doesn't error if the directory already exists.

ln -sfn $HOME/.dotfiles/vimrc.vim $HOME/.vimrc
ln -sfn $HOME/.dotfiles/vimrc.vim $HOME/.config/nvim/vimrc.vim

# -sfn
# s -> symbolic:
# create a symbolic link (symlink) instead of a hard link
# f -> force:
# remove the destination file if it already exists
# n -> no dereference:
# treat the destination symlink as a normal file instead of following it

ln -sfn $HOME/.dotfiles/.tmux.conf $HOME/
ln -sfn $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm $HOME/.config/alacritty
ln -sfn $HOME/.dotfiles/alacritty/ $HOME/.config/alacritty

ln -sfn $HOME/.dotfiles/fish/functions $HOME/.config/fish/functions

ln -sfn $HOME/.dotfiles/neovide $HOME/.config/neovide

# install homebrew first

# brew install --cask font-jetbrains-mono-nerd-font
