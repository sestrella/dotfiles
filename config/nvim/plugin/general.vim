set number

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

set colorcolumn=80

set clipboard+=unnamedplus
set mouse=""

set ignorecase
set smartcase

set timeoutlen=500

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader><Space> :nohlsearch<CR>

nnoremap <A-j> :m .+1<CR>
nnoremap <A-k> :m .-2<CR>

noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$
