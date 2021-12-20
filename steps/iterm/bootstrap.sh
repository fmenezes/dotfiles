#!/bin/zsh

source ./script/common.sh

install_cask_app 'iterm2'

echo 'Installing iTerm Profiles...'
if [[ -L ~/Library/Application\ Support/iTerm2/DynamicProfiles/iterm_profiles.json ]]; then
  echo 'Already installed, nothing else to do'
else
  ln -s $DOTFILES/steps/iterm/profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/iterm_profiles.json
  echo 'Done'
fi
