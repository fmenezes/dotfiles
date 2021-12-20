#!/bin/zsh

declare -a steps=(
  'brew'
  'zsh'
  'symlinks'
  'fonts'
  'cobalt2'
  'powerline'
  'iterm'
  'apps'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/bootstrap.sh"
done
