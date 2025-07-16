#!/bin/zsh

source ./script/common.sh

echo 'Installing Hombrew...'

which brew > /dev/null
EXIT_CODE=$?

if [[ "$EXIT_CODE" == "0" ]]; then
    echo 'Already installed, nothing else to do'
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ "$(/usr/bin/uname -m)" == "arm64" ]]; then
        HOMEBREW_PREFIX="/opt/homebrew"
    else
        HOMEBREW_PREFIX="/usr/local"
    fi
    eval "$(${HOMEBREW_PREFIX}/bin/brew shellenv)"
fi

pushd .

cd $DOTFILES
brew bundle

popd
