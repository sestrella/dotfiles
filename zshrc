source "$ADOTDIR/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm
antigen bundle pip
antigen bundle pyenv
antigen bundle rbenv
antigen bundle ssh-agent
antigen bundle stack
antigen bundle tmux

antigen theme denysdovhan/spaceship-prompt

antigen apply
