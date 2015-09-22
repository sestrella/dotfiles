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
export PATH="$HOME/.local/bin:$PATH"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

if [[ -f /usr/share/nvm/init-nvm.sh ]]; then
  source /usr/share/nvm/init-nvm.sh
fi

alias tas="tmux attach-session -t"
alias tks="tmux kill-session -t"
alias tls="tmux list-sessions"
alias tns="tmux new-session -s"

alias vim="emacs -nw"
