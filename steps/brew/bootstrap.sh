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

brew tap fmenezes/tap
brew trust fmenezes/tap

brew install ghostscript
brew install gh
brew install mas

brew install --cask appcleaner
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask spotify
brew install --cask docker
brew install --cask zoom
brew install --cask bitwarden
brew install --cask xbar

mas install 425424353  # The Unarchiver
