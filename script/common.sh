#!/bin/zsh

function try_run {
  eval $1
  ret=$?
  if [ $ret -ne 0 ]; then
    eval $2
    echo 'Done'
  else
    echo $3
  fi
}

function install_brew_app {
  for app in "$@"; do
    echo "Installing $app..."
    try_run "brew list --formula | grep $app > /dev/null" "brew install $app" 'Already installed, nothing else to do'
  done
}

function install_cask_app {
  for app in "$@"; do
    echo "Installing cask $app..."
    try_run "brew list --cask | grep $app > /dev/null" "brew cask install $app" 'Already installed, nothing else to do'
  done
}
