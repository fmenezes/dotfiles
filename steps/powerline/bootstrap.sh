#!/bin/zsh

source ./script/common.sh

try_run 'pip3 list --user | grep powerline-status > /dev/null' 'pip3 install --user powerline-status' 'Already installed, nothing else to do'