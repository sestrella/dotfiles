#!/bin/bash
export PYENV_ROOT="$HOME/.pyenv"

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
