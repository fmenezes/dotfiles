#!/bin/zsh

source ./script/common.sh

if [[ ! $SHELL == *"/zsh" ]]; then
    echo 'Updating shell to zsh'
    chsh -s $(which zsh)
fi

echo 'Installing Oh My Zsh'
try_run 'which omz > /dev/null' 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended' 'Already installed, nothing else to do'
