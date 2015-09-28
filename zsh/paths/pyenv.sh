#!/bin/bash
export PATH="$HOME/.pyenv/bin:$PATH"

if which pyenv > /devnull; then
  eval "$(pyenv init -)"
fi
