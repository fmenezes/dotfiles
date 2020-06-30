#!/bin/zsh

source ./script/common.sh

if [[ ! "$OSTYPE" == "darwin"* ]]; then
  echo 'Sorry only macOS is supported'
  exit 1
fi

declare -a steps=(
  'macos'
  'brew'
  'zsh'
  'symlinks'
  'nvm'
  'iterm'
  'apps'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/install.sh"
done
