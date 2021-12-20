#!/bin/zsh

if [[ "$(git config -f ~/.config/.gitconfig --get user.name)" == "" ]]; then
    echo -n "Input git user.name: "
    read gitname
    git config -f ~/.config/.gitconfig --add user.name $gitname
fi

if [[ "$(git config -f ~/.config/.gitconfig --get user.email)" == "" ]]; then
    echo -n "Input git user.email: "
    read gitemail
    git config -f ~/.config/.gitconfig --add user.email $gitemail
fi
