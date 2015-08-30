set number         " show line numbers
set cursorline     " highlight current line
set wildmenu       " visual autocomplete for command menu
set laststatus=2   " always show the status line
set colorcolumn=80 " show vertical line

set expandtab     " tabs are spaces
set tabstop=2     " number of visual spaces per TAB
set shiftwidth=2

set splitright " split vertical panels to right
set splitbelow " split horizontal panels to bottom

set incsearch  " search as characters are entered
set hlsearch   " highlight matches
set ignorecase " ignore case when searching
set smartcase  " only match case when starting with capital letter

set backupdir=/tmp
set directory=/tmp

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

let mapleader=','

noremap <leader><space> :nohlsearch<CR>

noremap <leader>sv :source ~/.vimrc<CR>
noremap <leader>si :source ~/.vimrc<CR>:PlugInstall<CR>
noremap <leader>ev :vsp ~/.vimrc<CR>
noremap <leader>ep :vsp ~/.vim/plugins.vim<CR>

if filereadable(expand('~/.vim/plugins.vim'))
  source ~/.vim/plugins.vim
endif

set t_Co=256

let g:solarized_termtrans=1

syntax enable
set background=dark
colorscheme solarized

if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0
endif

let g:airline_powerline_fonts=1

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>p :CtrlP<CR>
