#!/usr/bin/env zsh

cd "$(dirname "$0")" || exit

set -o ignoreeof

zsh ./zsh/init.zsh
zsh ./brew/init.zsh
zsh ./duti/init.zsh
zsh ./dict/init.zsh
zsh ./onyx/init.zsh
zsh ./ssh/init.zsh

defaults write -g ApplePressAndHoldEnabled -bool false

source "$HOME/.zshrc"
