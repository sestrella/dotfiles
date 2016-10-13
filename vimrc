call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'

call plug#end()

set expandtab
set number
set shiftwidth=2
set tabstop=2

let mapleader = ","

let g:ctrlp_map = '<leader>p'

syntax enable
set background=dark
colorscheme solarized

let g:airline_powerline_fonts = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

map <leader>n :NERDTreeToggle<CR>
