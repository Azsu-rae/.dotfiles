#! /bin/bash

mkdir -p ~/.config

ln -sfn $HOME/.dotfiles/.vimrc $HOME/.vimrc
ln -sfn $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sfn $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

ln -sfn $HOME/.dotfiles/alacritty/ $HOME/.config/alacritty
ln -sfn $HOME/.dotfiles/fish $HOME/.config/fish
ln -sfn $HOME/.dotfiles/neovide $HOME/.config/neovide

# install homebrew first

brew install --cask font-jetbrains-mono-nerd-font
