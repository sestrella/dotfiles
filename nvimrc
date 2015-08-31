set number

let g:mapleader = ','

let g:deoplete#enable_at_startup = 1

call g:plug#begin('~/.nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'

call g:plug#end()

augroup neomake
  autocmd! BufWritePost * Neomake
augroup END

map <leader>n :NERDTreeToggle<CR>
