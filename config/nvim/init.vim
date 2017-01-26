call plug#begin('~/.local/share/nvim/plugged')

Plug 'Quramy/tsuquyomi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-sort-motion'
Plug 'eagletmt/neco-ghc'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'neomake/neomake'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

set number
set relativenumber

set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

let mapleader = ','

" airline {{{
let g:airline_powerline_fonts = 1
" }}}

" ctrlp {{{
let g:ctrlp_map = '<Leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}

" neomake {{{
autocmd! BufRead,BufWritePost * Neomake
" }}}

" nerdtree {{{
let NERDTreeShowHidden=1

map <Leader>n :NERDTreeToggle<CR>
" }}}

" tsuquyomi {{{
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
" }}}

" solarized {{{
syntax enable
set background=dark
colorscheme solarized
" }}}
