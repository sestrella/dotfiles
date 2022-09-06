eval "$(starship init zsh)"
. "$(brew --prefix asdf)/libexec/asdf.sh"

export EDITOR="nvim"
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases
alias ga="git add"
alias gaa="git add --all"
alias gc!="git commit -v --amend"
alias gc="git commit -v"
alias gco="git checkout"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux#aliases
alias ta="tmux attach -t"
alias tkss="tmux kill-session -t"
alias tksv="tmux kill-server"
alias tl="tmux list-sessions"
alias ts="tmux new-session -s"

alias vi="nvim"
alias vim="nvim"
