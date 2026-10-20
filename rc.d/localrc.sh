#!/bin/zsh

if [ -f $HOME/.localrc ]; then
    source $HOME/.localrc
fi

if [ -d $HOME/.localrc.d ]; then
    for file in $HOME/.localrc.d/*.sh; do
        source $file
    done
fi
