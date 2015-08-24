#!/bin/bash
set -e

if [ ! -d ~/.rbenv ]; then
  echo "Installing rbenv"
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  echo "Installing ruby-build"
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi
