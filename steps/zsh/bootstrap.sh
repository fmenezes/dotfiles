#!/bin/zsh

source ./script/common.sh

if [[ ! $SHELL == *"/zsh" ]]; then
    echo 'Updating shell to zsh'
    chsh -s $(which zsh)
fi

echo 'Installing Oh My Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
