

#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi

export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim

alias sb="stack build"
alias si="stack install"
alias sr="stack repl"
alias st="stack test"

alias vim=nvim
