#!/bin/zsh
set -e

declare -a steps=(
  'brew'
  'zsh'
  'symlinks'
  'fonts'
  'iterm'
  'apps'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/bootstrap.sh"
done
