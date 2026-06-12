#! /bin/bash

set -e

# TODO make sure that eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)" is in .bashrc

# install software
if ! command -v fish &> /dev/null; then
    brew install fish
fi

if ! command -v nvim &> /dev/null; then
    brew install nvim
fi

if ! brew list --cask | grep jetbrains &> /dev/null; then
    brew install --cask font-jetbrains-mono-nerd-font
fi

if ! command -v node &> /dev/null; then
    brew install npm
fi

if ! command rust &> /dev/null; then
    brew install rust
fi

if ! command tmux &> /dev/null; then
    brew install tmux
fi

if ! command -v tree &> /dev/null; then
    brew install tree
fi

# single files
ln -sfn $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sfn $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
ln -sfn $HOME/.dotfiles/vimrc.vim $HOME/.vimrc

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
