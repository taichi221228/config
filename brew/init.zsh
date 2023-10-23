#!/usr/bin/env zsh

cd ~

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cp "$HOME/.Brewfile" "$HOME/Brewfile"

brew bundle
