#!/bin/zsh
set -e

function try_run {
  if ! eval $1 > /dev/null 2>&1; then
    eval $2
    echo 'Done'
  else
    echo $3
  fi
}
