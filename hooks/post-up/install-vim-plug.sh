#!/bin/bash
set -e

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Installing vim-plug"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
