#!/bin/zsh
set -e

source ./script/common.sh

echo 'Installing Apps...'

brew bundle install --file=$DOTFILES/Brewfile
