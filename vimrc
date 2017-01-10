" plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()
" }}}

" colorscheme {{{
syntax enable
set background=dark
colorscheme solarized
" }}}

" files {{{
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" }}}

" windows {{{
set splitbelow
set splitright
" }}}

set number

" indentation {{{
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2
" }}}

" search {{{
set ignorecase
set incsearch
set smartcase
set hlsearch
" }}}

" line {{{
set textwidth=80
set colorcolumn=+1
" }}}

let mapleader = ','

" syntastic {{{
let g:syntastic_check_on_open = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
" }}}

let g:airline_powerline_fonts = 1
let g:tsuquyomi_disable_quickfix = 1

" ctrlp {{{
let g:ctrlp_map = '<Leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
" }}}

let NERDTreeShowHidden=1

" tabular {{{
if exists(":Tabularize")
  vmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
" }}}

noremap <Leader><space> :nohlsearch<CR>
noremap <Leader>n :NERDTreeToggle<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
