#!/bin/zsh
set -e

source ./script/common.sh

echo 'Installing external Zsh plugin and theme...'

# Install external plugin
if [ ! -d ~/.oh-my-zsh/custom/plugins/fmenezes ]; then
  echo 'Installing fmenezes zsh plugin...'
  git clone https://github.com/fmenezes/zsh-plugin.git ~/.oh-my-zsh/custom/plugins/fmenezes
else
  echo 'External plugin already installed, nothing else to do'
fi

# Install external theme
if [ ! -f ~/.oh-my-zsh/custom/themes/fmenezes.zsh-theme ]; then
  echo 'Installing fmenezes zsh theme...'
  mkdir -p ~/.oh-my-zsh/custom/themes
  git clone https://github.com/fmenezes/zsh-theme.git ~/.oh-my-zsh/custom/themes/fmenezes-theme
  # Rename to match expected theme name
  mv ~/.oh-my-zsh/custom/themes/fmenezes-theme/fmenezes.zsh-theme ~/.oh-my-zsh/custom/themes/fmenezes.zsh-theme
  rm -rf ~/.oh-my-zsh/custom/themes/fmenezes-theme
else
  echo 'External theme already installed, nothing else to do'
fi