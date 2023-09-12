#!/bin/zsh

source ./script/common.sh

echo 'Installing Hombrew...'
try_run 'which brew > /dev/null' '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"' 'Already installed, nothing else to do'

pushd .

cd $DOTFILES
brew bundle

popd
