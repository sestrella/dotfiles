call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader = ','

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>pi :source $MYVIMRC<cr>:PlugInstall<cr>
nnoremap <leader>pu :source $MYVIMRC<cr>:PlugUpdate<cr>

nnoremap <leader>ve :split $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

nnoremap <leader>w :w<cr>

let g:deoplete#enable_at_startup = 1

syntax enable
set background=dark
colorscheme solarized

augroup neomake
  autocmd!
  autocmd BufWritePost * Neomake
augroup end

let g:NERDTreeShowHidden = 1

noremap <c-n> :NERDTreeToggle<cr>

noremap <leader>fw :FixWhitespace<cr>

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

augroup necoghc
  autocmd!
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup end
