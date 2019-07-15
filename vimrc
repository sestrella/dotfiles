call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number

set expandtab
set shiftwidth=2
set tabstop=2

set nobackup
set noswapfile
set noundofile

if has#colorscheme('solarized')
  syntax enable
  set background=light
  colorscheme solarized
endif

let g:NERDTreeShowHidden=1

noremap <C-n> :NERDTreeToggle<CR>

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
