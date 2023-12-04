#!/usr/bin/env zsh

function woff2() {
  if [ "$1" = "compress" ]; then
    woff2_compress "$2"
  elif [ "$1" = "decompress" ]; then
    woff2_decompress "$2"
  else
    echo "woff2: command not found"
  fi
}
