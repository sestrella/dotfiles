set background=dark
set colorcolumn=80 " display vertical line at 80 chars
set cursorline " show cursor position
set number " show line numbers

set expandtab " replace tabs with spaces
set shiftwidth=2 " 1 tab == 2 spaces

set splitbelow " split vertical panels to the bottom
set splitright " split horizontal panels to the right

set hlsearch " highlight search matches
set ignorecase " ignore case while searching
set incsearch " search like in modern browsers
set smartcase " enabled case-sensitve only when first letter is uppercase

set backupdir=/tmp
set directory=/tmp

let g:mapleader=','

let g:airline_powerline_fonts=1
let g:ctrlp_map='<leader>p'
let g:deoplete#enable_at_startup=1
let g:solarized_termtrans=1

if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0
endif

call g:plug#begin('~/.nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'godlygeek/tabular'
Plug 'keith/tmux.vim'
Plug 'kien/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'skalnik/vim-vroom'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

call g:plug#end()

syntax enable
colorscheme solarized

noremap <leader><space> :nohlsearch<CR>

noremap <leader>n :NERDTreeToggle<CR>

if exists(':Tabularize')
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

augroup neomake
  autocmd! BufWritePost * Neomake
augroup END
