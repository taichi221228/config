# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

#!/usr/bin/env zsh

# Variables
export REMOTE_HOME="$HOME/Library/Mobile Documents/com~apple~CloudDocs"

export A="/Applications"
export C="$HOME/Contributions"
export D="$HOME/Desktop"
export F="$REMOTE_HOME/Configs"
export G="$HOME/Games"
export I="$REMOTE_HOME"
export L="$HOME/Downloads"
export O="$HOME/Documents"
export P="$HOME/Projects"
export R="$HOME/Dropbox"
export W="$HOME/Works"

# General
source "$F/zsh/alias.zsh"

# Brew
ARCH=$(uname -m)
if [[ $ARCH == arm64 ]]; then
  echo "Current Architecture: $ARCH"
  eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $ARCH == x86_64 ]]; then
  echo "Current Architecture: $ARCH"
  eval $(/usr/local/bin/brew shellenv)
fi

# Fig
export FIG_WORKFLOWS_KEYBIND="^\\"

# Bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Docker (lima)
# export DOCKER_HOST=unix://${HOME}/.lima/docker/sock/docker.sock
# export LIMA_INSTANCE=docker

# gcloud
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# GitHub CLI
eval "$(gh completion -s zsh)"

# Ruby
export PATH="$HOME/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init - zsh)"

# JAVA
#export JAVA_HOME="/usr/libexec/java_home -v 1.8"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# ClamAV
export PATH="/usr/local/cmake/bin:$PATH"
source "$HOME/.cargo/env"
export PATH="/usr/local/keyconfig/bin:$PATH"
export PATH="/usr/local/check/bin:$PATH"
export PATH="/usr/local/libressl/bin:$PATH"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
