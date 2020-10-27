#!/bin/zsh

if [[ ! "$OSTYPE" == "darwin"* ]]; then
  echo 'Sorry only macOS is supported'
  exit 1
fi

echo 'Installing Xcode Command Line Tools...'
xcode-select -p > /dev/null
ret=$?
if [ $ret -ne 0 ]; then
  xcode-select --install
  echo 'Done'
else
  echo 'Already installed, nothing else to do'
fi

echo 'Cloning dotfiles...'
if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/fmenezes/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
else
  echo 'Already cloned, updating...'
  cd ~/.dotfiles
  git pull
fi


source ./script/common.sh

declare -a steps=(
  'brew'
  'zsh'
  'symlinks'
  'nvm'
  'fonts'
  'cobalt2'
  'iterm'
  'apps'
)
for step in "${steps[@]}"; do
  eval "./steps/$step/bootstrap.sh"
done
