#!/bin/zsh

source ./script/common.sh

install_brew_app zsh zsh-completions

echo 'Updating shell to zsh'
chsh -s $(brew --prefix zsh)

echo 'Installing Oh My Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
