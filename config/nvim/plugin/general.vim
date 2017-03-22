set number

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

set colorcolumn=80

let mapleader = ','

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>ve :split $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

nnoremap <leader>w :w<cr>

nnoremap <leader><space> :nohlsearch<cr>
