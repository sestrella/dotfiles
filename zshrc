source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle asdf
antigen bundle docker
antigen bundle git
antigen bundle ssh-agent
antigen bundle tmux

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme denysdovhan/spaceship-prompt

antigen apply
