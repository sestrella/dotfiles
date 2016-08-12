dir="$HOME/.rbenv/bin"

[[ ":$PATH:" != *":$dir:"* && -d "$dir" ]] && export PATH="$dir:$PATH"
