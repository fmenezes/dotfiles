#!/bin/zsh

source ./script/common.sh

echo 'Installing Hombrew...'
try_run 'which brew > /dev/null' 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"' 'Already installed, nothing else to do'

pushd .

cd $DOTFILES
brew bundle

popd
