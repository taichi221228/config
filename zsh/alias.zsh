#!/usr/bin/env zsh

# General
alias restart='exec $SHELL -l'

function clean() {
  if [ "$1" = "files" ]; then
    sudo find / -name .localized -or -name .DS_Store -depth -exec rm {} \;
  elif [ "$1" = "launchpad" ]; then
    defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
  else
    echo "clean: command not found"
  fi
}

# Change Directory
alias A="cd /Applications"
alias C='cd $HOME/Contributions'
alias F='cd $REMOTE_HOME/Configs'
alias D='cd $HOME/Desktop'
alias G='cd $HOME/Games'
alias I='cd $REMOTE_HOME'
alias L='cd $HOME/Downloads'
alias O='cd $HOME/Documents'
alias P='cd $HOME/Projects'
alias R='cd $HOME/Dropbox'
alias W='cd $HOME/Works'

# Alias
alias al="alias"

# JetBrains
alias ac_="appcode"
alias qa_="aqua"
alias cl_="clion"
alias dg_="datagrip"
alias ds_="datagrip"
alias go_="goland"
alias ij_="intelij"
alias ps_="phpstorm"
alias pc_="pycharm"
alias rd_="rider"
alias rm_="rubymine"
alias rr_="rustrover"
alias ws_="webstorm"
alias space="open -a 'Space Desktop'"

# Brew
alias br="brew"
alias brin="brew install"
alias brls="brew list"
alias brs="brew search"
alias brun="brew uninstall"

# Docker
alias dc="docker"
alias dcc="docker compose"
alias dccdn="docker compose down"
alias dccup="docker compose up"
alias dccstt="docker compose start"
alias dccstp="docker compose stop"
alias dce="docker exec"
alias dcps="docker ps"
alias dcr="docker run"
alias dcstt="docker start"
alias dcstp="docker stop"

# npm
alias n="npm"
alias nc="npm create"
alias nb="npm run build"
alias nd="npm run dev"
alias ndp="npm run deploy"
alias nft="npm run format"
alias nin="npm i"
alias nind="npm i -D "
alias ning="npm i -g"
alias nls="npm list"
alias nlsg="npm list -g"
alias nlt="npm run lint"
alias nltf="npm run lint -- --fix"
alias nr="npm run"
alias ns="npm run serve"
alias nstt="npm start"
alias nt="npm test"
alias nun="npm uninstall"
alias nung="npm -g uninstall"
alias nx="npx"

# pNpm
alias pn="pnpm"
alias pnc="pnpm create"
alias pnb="pnpm run build"
alias pnd="pnpm run dev"
alias pndp="pnpm run deploy"
alias pnft="pnpm run format"
alias pnin="pnpm i"
alias pnind="pnpm i -D "
alias pning="pnpm i -g"
alias pnls="pnpm list"
alias pnlsg="pnpm list -g"
alias pnlt="pnpm run lint"
alias pnltf="pnpm run lint -- --fix"
alias pnr="pnpm run"
alias pns="pnpm run serve"
alias pnstt="pnpm start"
alias pnt="pnpm test"
alias pnun="pnpm uninstall"
alias pnung="pnpm -g uninstall"
alias pnx="pnpx"

# Bun

alias b="bun"
alias bad="bun add"
alias bin="bun install"
alias brm="bun remove"

# Composer
alias c="composer"
alias cin="composer install"
alias crq="composer require"
alias crm="composer remove"

# Artisan
alias art="php artisan"

# Sail
alias sail="[ -f sail ] && bash sail || bash vendor/bin/sail"
alias sl="sail"
alias slart="sail artisan"
alias slb="sail build"
alias slc="sail composer"
alias sldn="sail down"
alias slup="sail up"
alias slupd="sail up -d"
alias slsh="sail shell"
alias slstt="sail start"
alias slstp="sail stop"
alias slt="sail test"

# Open
alias o="open"

# Source
alias src="source"
alias srcz='source $HOME/.zshrc & fig source'

# WOFF2
function woff2() {
  if [ "$1" = "compress" ]; then
    woff2_compress "$2"
  elif [ "$1" = "decompress" ]; then
    woff2_decompress "$2"
  else
    echo "woff2: command not found"
  fi
}
