export XDG_CONFIG_HOME="$HOME/.config"

for f in $XDG_CONFIG_HOME/zsh/*.zsh; do
  source $f
done
