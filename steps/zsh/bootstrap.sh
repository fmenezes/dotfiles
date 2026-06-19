#!/bin/zsh
set -e

source ./script/common.sh

if [[ ! $SHELL == *"/zsh" ]]; then
    echo 'Updating shell to zsh'
    chsh -s $(which zsh)
fi

echo 'Installing Oh My Zsh'
try_run '[[ -d ~/.oh-my-zsh ]]' 'ZSH= sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended' 'Already installed, nothing else to do'

# Source OMZ to make omz command available without shell restart
source ~/.oh-my-zsh/oh-my-zsh.sh
