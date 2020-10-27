#!/bin/zsh

if [ ! -f "$HOME/.oh-my-zsh/themes/cobalt2.zsh-theme" ]; then
    git clone https://github.com/wesbos/Cobalt2-iterm --depth=1 cobalt2
    cd cobalt2
    cp cobalt2.zsh-theme ~/.oh-my-zsh/themes/
    cd ..
    rm -rf cobalt2
fi
