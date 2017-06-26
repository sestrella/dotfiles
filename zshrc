source /etc/zsh/zshrc

export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim

alias ta='tmux attach-session -t'
alias tl='tmux list-sessions'
alias ts='tmux new-session -s'

alias nvim=vim
