#!/bin/zsh
set -e

if [[ ! "$OSTYPE" == "darwin"* ]]; then
  echo 'Sorry only macOS is supported'
  exit 1
fi

echo 'Installing Xcode Command Line Tools...'
if ! xcode-select -p > /dev/null 2>&1; then
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

./script/bootstrap.sh
