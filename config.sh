#!/usr/bin/env bash

set -e

source install.sh

# DIRs

mkdir -p ~/.config

ans=""

# NVIM
if [ -d "$HOME/.config/nvim" ]; then
    read -p "Existing \$HOME/.config/nvim. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/nvim" ]] || [[ -n "$ans" ]]; then
    rm -rf $HOME/.config/nvim
    git clone https://github.com/Azsu-rae/nvim $HOME/.config/nvim
    ln -sfn $HOME/.dotfiles/vimrc.vim $HOME/.config/nvim/vimrc.vim
fi

# ALACRITTY
if [ -d "$HOME/.config/alacritty" ]; then
    read -p "Existing \$HOME/.config/alacritty. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/alacritty" ]] || [[ -n "$ans" ]]; then
    rm -rf $HOME/.config/alacritty
    ln -sfn $HOME/.dotfiles/alacritty/ $HOME/.config/alacritty
fi

# KEYD
if [ -d "$HOME/.config/keyd" ]; then
    read -p "Existing \$HOME/.config/alacritty. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/keyd" ]] || [[ -n "$ans" ]]; then
    rm $HOME/.config/keyd/app.conf
    ln -sfn $HOME/.dotfiles/keyd/ $HOME/.config/keyd/app.conf
fi

# GHOSTTY
if [ -d "$HOME/.config/ghostty" ]; then
    read -p "Existing \$HOME/.config/ghostty. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/ghostty" ]] || [[ -n "$ans" ]]; then
    rm -rf $HOME/.config/ghostty
    ln -sfn $HOME/.dotfiles/ghostty/ $HOME/.config/ghostty
fi

# NEOVIDE
if [ -d "$HOME/.config/neovide" ]; then
    read -p "Existing \$HOME/.config/neovide. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/neovide" ]] || [[ -n "$ans" ]]; then
    rm -rf $HOME/.config/neovide
    ln -sfn $HOME/.dotfiles/neovide/ $HOME/.config/neovide
fi

# FISH
if [ -d "$HOME/.config/fish/functions" ]; then
    read -p "Existing \$HOME/.config/fish/functions. Overwrite [Y/n]? " ans
    if [[ ! "$ans" =~ ^[Yy]$ ]]; then
        ans=""
    fi
fi
if [[ ! -d "$HOME/.config/fish/functions" ]] || [[ -n "$ans" ]]; then
    mkdir -p $HOME/.config/fish
    rm -rf $HOME/.config/fish/functions
    ln -sfn $HOME/.dotfiles/fish/functions/ $HOME/.config/fish/functions
fi
if [ ! -f "$HOME/.config/fish/appended" ]; then
    touch $HOME/.config/fish/appended
    cat $HOME/.dotfiles/fish/config.fish-to-append >> $HOME/.config/fish/config.fish
fi
if [ ! -f "$HOME/.dotfiles/marp-themes/" ]; then
    ln -sfn $HOME/.dotfiles/marp-themes/ $HOME/marp-themes
fi

# additional configs

if [ ! -d "$HOME/.ssh" ]; then
    ssh-keygen -t ed25519 -C "aitameurilyas@gmail.com"
fi

if [[ ! $(which fish) = "$SHELL" ]]; then
    if ! grep -q "fish" /etc/shells; then
        which fish | sudo tee -a /etc/shells
    fi
    chsh -s $(which fish)
    echo ""
    echo "Log back for the fish shell to take effect"
fi
