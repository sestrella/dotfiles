#!/bin/bash
if [ -e "$HOME/.nvm/nvm.sh" ]; then
    source "$HOME/.nvm/nvm.sh"
fi
alias npm-exec="PATH=$(npm bin):$PATH"
