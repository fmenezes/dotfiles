#!/bin/zsh

source ./script/common.sh

declare -a steps=(
  'brew'
  'zsh'
  'symlinks'
  'iterm'
  'apps'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/install.sh"
done
