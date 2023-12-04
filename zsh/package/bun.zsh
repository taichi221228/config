#!/usr/bin/env zsh

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias b="bun"
alias bad="bun add"
alias bin="bun install"
alias brm="bun remove"
