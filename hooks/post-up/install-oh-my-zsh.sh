#!/bin/bash
set -e

if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh"
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
