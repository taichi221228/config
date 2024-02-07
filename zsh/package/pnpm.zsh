#!/usr/bin/env zsh

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias pnp="pnpm"
alias pnpc="pnpm create"
alias pnpb="pnpm run build"
alias pnpd="pnpm run dev"
alias pnpdp="pnpm run deploy"
alias pnpf="pnpm run format"
alias pnpi="pnpm i"
alias pnpid="pnpm i -D"
alias pnpig="pnpm i -g"
alias pnpl="pnpm run lint"
alias pnplf="pnpm run lint --fix"
alias pnplff="pnpm run lint --fix && pnpm run format"
alias pnpls="pnpm list"
alias pnplsg="pnpm list -g"
alias pnpr="pnpm run"
alias pnps="pnpm start"
alias pnpt="pnpm test"
alias pnpu="pnpm uninstall"
alias pnpug="pnpm -g uninstall"
