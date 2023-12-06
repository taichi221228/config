#!/usr/bin/env zsh

function yamano:cpimg() {
  scp -r taichi.fukuda@"$1":'/tmp/CooperateChirashiImage_*' .
}

_yamano:cpimg_comp() {
  if [ "$CURRENT" = 2 ]; then
    while IFS= read -r l; do
      hosts+=("$l")
    done < <(grep -E '^Host yamano[^*]+$' ~/.ssh/vault/yamano/config | awk '{print $2}')
    IFS=$' \t\n'

    compadd -a hosts
  fi
}

compdef _yamano:cpimg_comp yamano:cpimg
