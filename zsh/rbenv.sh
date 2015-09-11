#!/bin/bash
export RBENV_ROOT="$HOME/.rbenv"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
