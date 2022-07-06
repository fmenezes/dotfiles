#!/bin/zsh

declare -a steps=(
  'brew'
  'zsh'
  'symlinks'
  'fonts'
  'iterm'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/bootstrap.sh"
done
