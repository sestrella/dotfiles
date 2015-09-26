#!/bin/bash
# [e] stop execution on error
# [x] print each command executed
set -ex

ln -sf $PWD/bundle/config $HOME/.bundle/config
ln -sf $PWD/emacs.d/Cask $HOME/.emacs.d/Cask
ln -sf $PWD/emacs.d/init.el $HOME/.emacs.d/init.el
ln -sf $PWD/gitconfig $HOME/.gitconfig
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/zpreztorc $HOME/.zpreztorc
ln -sf $PWD/zshrc $HOME/.zshrc
