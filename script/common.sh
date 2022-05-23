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
