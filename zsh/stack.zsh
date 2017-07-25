export PATH="$HOME/.local/bin:$PATH"

if type stack > /dev/null; then
  alias sb='stack build'
  alias sc='stack clean'
  alias se='stack exec'
  alias si='stack install'
  alias sr='stack repl'
  alias st='stack test'
fi
