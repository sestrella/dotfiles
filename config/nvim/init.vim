let g:python_host_prog = expand('~/.asdf/installs/python/2.7.15/bin/python')
let g:python3_host_prog = expand('~/.asdf/installs/python/3.7.2/bin/python')

call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neomake/neomake'
Plug 'ntpeters/vim-better-whitespace'
Plug 'parsonsmatt/intero-neovim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'shougo/deoplete.nvim'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'

if has('python') || has('python3')
  Plug 'omnisharp/omnisharp-vim'
endif

call plug#end()
