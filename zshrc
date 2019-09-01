source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle asdf
antigen bundle docker
antigen bundle git
antigen bundle mvn
antigen bundle tmux
antigen bundle tmuxinator

antigen bundle zsh-users/zsh-autosuggestions

antigen theme denysdovhan/spaceship-prompt

antigen apply
