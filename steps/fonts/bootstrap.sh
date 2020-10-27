#!/bin/zsh

if [ ! -f "$HOME/Library/Fonts/Inconsolata for Powerline.otf" ]; then
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
fi
