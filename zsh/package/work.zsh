#!/usr/bin/env zsh

function yamano:cpimg() {
  scp -r -i ~/.ssh/yamano.pem taichi.fukuda@"$1":'/tmp/CooperateChirashiImage_*' .
}

yamano:cpimg_comp() {
  if [ "$CURRENT" = 2 ]; then
    while IFS= read -r l; do
      hosts+=("$l")
    done < <(grep -E '^Host yamano[^*]+$' ~/.ssh/yamano_config | awk '{print $2}')
    IFS=$' \t\n'

    compadd -a hosts
  fi
}

compdef yamano:cpimg_comp yamano:cpimg
