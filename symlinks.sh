#!/usr/bin/env bash

set -e

# DIRs

ans=""

CONFIGS=('nvim' 'alacritty' 'keyd' 'ghostty' 'neovide')
for config in "${CONFIGS[@]}"; do
    if [ -d "$HOME/.config/$config" ]; then
        read -p "Existing \$HOME/.config/$config. Overwrite [Y/n]? " ans
        if [[ ! "$ans" =~ ^[Yy]$ ]]; then
            ans=""
        fi
    fi
    if [[ ! -d "$HOME/.config/$config" ]] || [[ -n "$ans" ]]; then
        rm -rf "$HOME/.config/$config"
        ln -sfn "$HOME/.dotfiles/.config/$config" "$HOME/.config/"
    fi
done

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
    ln -sfn $HOME/.dotfiles/.config/fish/functions/ $HOME/.config/fish/functions
fi
if [ ! -f "$HOME/.config/fish/appended" ]; then
    touch $HOME/.config/fish/appended
    cat $HOME/.dotfiles/.config/fish/config.fish >> "$HOME/.config/fish/config.fish"
fi

# additional configs

if [ ! -d "$HOME/.dotfiles/marp-themes/" ]; then
    ln -sfn $HOME/.dotfiles/marp-themes/ $HOME/marp-themes
fi

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
