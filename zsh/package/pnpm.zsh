#!/usr/bin/env zsh

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias pnpm="pnpm"
alias pnpmc="pnpm create"
alias pnpmb="pnpm run build"
alias pnpmd="pnpm run dev"
alias pnpmdp="pnpm run deploy"
alias pnpmft="pnpm run format"
alias pnpmin="pnpm i"
alias pnpmind="pnpm i -D "
alias pnpming="pnpm i -g"
alias pnpmls="pnpm list"
alias pnpmlsg="pnpm list -g"
alias pnpmlt="pnpm run lint"
alias pnpmltf="pnpm run lint -- --fix"
alias pnpmr="pnpm run"
alias pnpms="pnpm run serve"
alias pnpmstt="pnpm start"
alias pnpmt="pnpm test"
alias pnpmun="pnpm uninstall"
alias pnpmung="pnpm -g uninstall"
