export PATH="$HOME/.pyenv/bin:$PATH"

if type pyenv > /dev/null; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
