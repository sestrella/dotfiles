export EDITOR=nvim
export VISUAL=$EDITOR

if type emacs > /dev/null; then
  alias emacs="emacs -nw"
fi
