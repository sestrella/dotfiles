source /etc/zsh/zshrc

for f in $HOME/.zsh/*.zsh; do
  source $f;
done
