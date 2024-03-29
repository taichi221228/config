#!/usr/bin/env zsh

cd $(dirname $0) || exit

zsh ./cmake.zsh
zsh ./rustup.zsh
zsh ./pkg-config.zsh
zsh ./check.zsh
zsh ./pcre2.zsh
zsh ./openssl.zsh
zsh ./json-c.zsh
zsh ./clamav.zsh
