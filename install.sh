#!/bin/zsh

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
git clone git@github.com:fmenezes/dotfiles ~/.dotfiles

cd ~/.dotfiles
./script/install.sh
