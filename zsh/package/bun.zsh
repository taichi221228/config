#!/usr/bin/env zsh

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias bn='bun'
alias bnc='bun create'
alias bnb='bun run build'
alias bnd='bun run dev'
alias bndp='bun run deploy'
alias bnf='bun run format'
alias bni='bun i'
alias bnid='bun i -D'
alias bnig='bun i -g'
alias bnl='bun run lint'
alias bnlf='bun run lint.fix'
alias bnlff='bun run lint.fix && bun run format'
alias bnls='bun list'
alias bnlsg='bun list -g'
alias bnr='bun run'
alias bns='bun start'
alias bnt='bun test'
alias bnun='bun uninstall'
alias bnug='bun -g uninstall'
