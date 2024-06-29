#!/usr/bin/env zsh

cd ~ || exit

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ln -s "$F/general/brew/Brewfile" "$HOME/Brewfile"

brew bundle
