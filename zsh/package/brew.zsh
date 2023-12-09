#!/usr/bin/env zsh

ARCH=$(uname -m)
if [[ $ARCH == arm64 ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ $ARCH == x86_64 ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

alias br="brew"
alias brin="brew install"
alias brinc="brew install --cask"
alias brup="brew update"
alias brls="brew list"
alias brs="brew search"
alias brun="brew uninstall"
