let g:python_host_prog = expand('~/.asdf/installs/python/2.7.16/bin/python')
let g:python3_host_prog = expand('~/.asdf/installs/python/3.7.2/bin/python')

let g:ruby_host_prog = expand('~/.asdf/installs/ruby/2.6.1/bin/ruby')

call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'leafgarland/typescript-vim'
Plug 'neomake/neomake'
Plug 'ntpeters/vim-better-whitespace'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'

if has('python') || has('python3')
  Plug 'eagletmt/neco-ghc'
  Plug 'mhartington/nvim-typescript'
  Plug 'omnisharp/omnisharp-vim'
  Plug 'shougo/deoplete.nvim'
endif

call plug#end()
