#!/usr/bin/env zsh

ARCH=$(uname -m)
if [[ $ARCH == arm64 ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ $ARCH == x86_64 ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

alias br='brew'
alias brb='(cd $F/general/brew && brew bundle)'
alias brbd='(cd $F/general/brew && brew bundle dump --force) && echo "Brewfile updated"'
alias bri='brew install'
alias bric='brew install --cask'
alias brls='brew list'
alias brs='brew search'
alias brun='brew uninstall'
alias brup='brew update'
alias brri='brew reinstall'
