#!/bin/bash
set -e

if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "Installing tpm"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
