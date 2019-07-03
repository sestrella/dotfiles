source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle asdf
antigen bundle bundler
antigen bundle git
antigen bundle npm
antigen bundle pip
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle yarn

antigen theme denysdovhan/spaceship-prompt

antigen apply
