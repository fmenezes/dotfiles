#!/bin/zsh

source ./script/common.sh

echo 'Installing Hombrew...'
try_run 'which brew > /dev/null' 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"' 'Already installed, nothing else to do'

declare -a apps=(
  'go'
  'rbenv'
  'rbenv-default-gems'
  'ffmpeg'
)
for app in "${apps[@]}"; do
  install_brew_app $app
done

eval "$(rbenv init -)"
if [ ! -f $(rbenv root)/default-gems ]; then
  echo 'bundler' > $(rbenv root)/default-gems
fi
