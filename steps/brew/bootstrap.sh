#!/bin/zsh
set -e

source ./script/common.sh

echo 'Installing Hombrew...'

if which brew > /dev/null 2>&1; then
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
