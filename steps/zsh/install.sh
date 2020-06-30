#!/bin/zsh

source ./script/common.sh

echo 'Updating shell to zsh'
chsh -s $(which zsh)

echo 'Installing Oh My Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
