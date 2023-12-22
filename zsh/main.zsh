#!/usr/bin/env zsh

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

source "$HOME/Library/Mobile Documents/com~apple~CloudDocs/Configs/zsh/package/package.zsh"

# shellcheck disable=SC1090
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
