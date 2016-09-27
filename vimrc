call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
