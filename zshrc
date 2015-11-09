export EDITOR=nvim
export TERM=xterm-256color

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias tas='tmux attach-session -t'
alias tks='tmux kill-session -t'
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'

alias vim='nvim'

eval "$(pyenv init -)"
eval "$(rbenv init -)"

source ~/.zpreztorc
source /usr/share/nvm/init-nvm.sh
