let g:python_host_prog = expand('~/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kshenoy/vim-signature'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'SirVer/ultisnips'
"Plug 'airblade/vim-gitgutter'
"Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
"Plug 'godlygeek/tabular'
"Plug 'hecal3/vim-leader-guide'
"Plug 'nbouscal/vim-stylish-haskell'
"Plug 'neomake/neomake'
"Plug 'pangloss/vim-javascript'
"Plug 'parsonsmatt/intero-neovim'
"Plug 'pbrisbin/vim-syntax-shakespeare'
"Plug 'thoughtbot/vim-rspec'
"Plug 'tmux-plugins/vim-tmux'
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-projectionist'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-surround'

call plug#end()
