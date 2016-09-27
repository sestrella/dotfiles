call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'

call plug#end()

let g:airline_powerline_fonts = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

map <C-n> :NERDTreeToggle<CR>
