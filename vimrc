set laststatus=2

set number

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set wildmenu

let mapleader = ','

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

call plug#end()

let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

map <leader>n :NERDTreeToggle<CR>
