#!/bin/zsh

source ./script/common.sh

sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true # enable switching between light and dark mode via cmd+alt+ctrl T

