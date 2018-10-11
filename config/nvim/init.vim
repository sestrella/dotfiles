let g:python_host_prog = expand('~/.asdf/installs/python/2.7.15/bin/python')
let g:python3_host_prog = expand('~/.asdf/installs/python/3.7.0/bin/python')

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'ntpeters/vim-better-whitespace'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'airblade/vim-gitgutter'
"Plug 'honza/vim-snippets'
"Plug 'neomake/neomake'
"Plug 'tpope/vim-projectionist'

if has('python3')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
endif

call plug#end()
