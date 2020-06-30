#!/bin/zsh

source ./script/common.sh

declare -a cask_apps=(
  'appcleaner'
  'google-chrome'
  'skype'
  'visual-studio-code'
  'enpass'
  'slack'
  'spotify'
)
for app in "${cask_apps[@]}"; do
  install_cask_app $app
done
