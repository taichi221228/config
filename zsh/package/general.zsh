#!/usr/bin/env zsh

function clean() {
  if [ "$1" = "files" ]; then
    sudo find / -name .localized -or -name .DS_Store -depth -exec rm {} \;
  elif [ "$1" = "launchpad" ]; then
    defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
  else
    echo "clean: command not found"
  fi
}
