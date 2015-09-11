#!/bin/bash
if [ -e "$HOME/.nvm/nvm.sh" ]; then
  source "$HOME/.nvm/nvm.sh"
fi

if which npm > /dev/null; then
  alias npm-exec="PATH=$(npm bin):$PATH"
fi
