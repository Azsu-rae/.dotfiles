#!/usr/bin/env bash

set -e

# TODO make sure that eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)" is in .bashrc

# ---------------------------------------
# TERMINAL

if ! command -v fish &> /dev/null; then
    brew install fish
fi

if ! command tmux &> /dev/null; then
    brew install tmux
fi

if ! command -v nvim &> /dev/null; then
    brew install nvim
fi

if ! brew list --cask | grep jetbrains &> /dev/null; then
    brew install --cask font-jetbrains-mono-nerd-font
fi

if ! command -v tree &> /dev/null; then
    brew install tree
fi

# ---------------------------------------
# PROGRAMMING

if ! command -v node &> /dev/null; then
    brew install npm
fi

if ! command rust &> /dev/null; then
    brew install rust
fi
