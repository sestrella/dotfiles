call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

syntax enable
set background=dark
colorscheme solarized

set number

set splitbelow
set splitright

set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

set ignorecase
set incsearch
set smartcase
set hlsearch

set textwidth=80
set colorcolumn=+1

let mapleader = ','

let g:airline_powerline_fonts = 1

let g:deoplete#enable_at_startup = 1

let g:ctrlp_map = '<Leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let NERDTreeShowHidden=1

autocmd! BufReadPre,BufWritePost * Neomake

noremap <Leader><space> :nohlsearch<CR>
noremap <Leader>n :NERDTreeToggle<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
