#!/bin/zsh

source ./script/common.sh

NVM_DIR=${NVM_DIR:-~/.nvm}

if [ ! -d $NVM_DIR ]; then
    git clone http://github.com/nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    VERSION=$(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
    git checkout -q $VERSION
    echo 'Done'
else
    echo 'Already installed, nothing else to do'
fi
