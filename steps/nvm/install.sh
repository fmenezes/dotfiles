#!/bin/zsh

source ./script/common.sh

function install_nvm {
    git clone git@github.com:nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    VERSION=$(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
    git checkout -q $VERSION
}

try_run 'which nvm > /dev/null' 'install_nvm' 'Already installed, nothing else to do'
