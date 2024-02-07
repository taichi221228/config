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
alias pnpmf="pnpm run format"
alias pnpmi="pnpm i"
alias pnpmid="pnpm i -D"
alias pnpmig="pnpm i -g"
alias pnpmls="pnpm list"
alias pnpmlsg="pnpm list -g"
alias pnpml="pnpm run lint"
alias pnpmlf="pnpm run lint -- --fix"
alias pnpmr="pnpm run"
alias pnpms="pnpm start"
alias pnpmt="pnpm test"
alias pnpmu="pnpm uninstall"
alias pnpmug="pnpm -g uninstall"
