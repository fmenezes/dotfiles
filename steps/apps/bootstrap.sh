#!/bin/zsh
set -e

source ./script/common.sh

echo 'Installing Apps...'

brew tap fmenezes/tap
brew trust fmenezes/tap

brew install ghostscript
brew install gh
brew install mas

brew install --cask appcleaner
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask zoom
brew install --cask bitwarden
brew install --cask xbar

mas install 425424353  # The Unarchiver
mas install 310633997  # Whatsapp
