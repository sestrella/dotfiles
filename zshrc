source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle asdf
antigen bundle git
antigen bundle ssh-agent
antigen bundle tmux

antigen theme denysdovhan/spaceship-prompt

antigen apply
