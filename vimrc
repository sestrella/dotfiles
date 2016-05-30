set laststatus=2

set number

set nobackup
set nowb
set noswapfile

set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

set wildmenu

let mapleader = ','

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

call plug#begin('~/.vim/plugged')

if filereadable(expand('~/.vim/plugins.vim'))
  source ~/.vim/plugins.vim
endif

call plug#end()

for g:fpath in split(globpath('~/.vim/plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor
