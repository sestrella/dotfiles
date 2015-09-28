#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export TERM="xterm-256color"

export PATH="$HOME/.cask/bin:$PATH"

source ~/.nvm/nvm.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias tas="tmux attach-session -t"
alias tks="tmux kill-session -t"
alias tls="tmux list-sessions"
alias tns="tmux new-session -s"

alias vim="nvim"
