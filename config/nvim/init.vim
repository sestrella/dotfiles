set number

let mapleader = ','


call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/deoplete-typescript'
Plug 'scrooloose/nerdtree'

call plug#end()

" deoplete
let g:deoplete#enable_at_startup = 1

" ctrlp
let g:ctrlp_map = '<leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" nerdtree
map <leader>n :NERDTreeToggle<CR>
