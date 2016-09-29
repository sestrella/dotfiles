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
export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.cask/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export TERM='xterm-256color'
export VISUAL=vim

alias emacs='emacs -nw'

alias tas='tmux attach-session -t'
alias tks='tmux kill-session -t'
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'

[[ -s "~/.rbenv/bin/rbenv" ]] && eval "$(rbenv init -)"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"