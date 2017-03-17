call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eagletmt/neco-ghc'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript', { 'do': 'npm install -g typescript' }
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

set number

let g:deoplete#enable_at_startup = 1

syntax enable
set background=dark
colorscheme solarized

augroup neomake
  autocmd!
  autocmd BufWritePost * Neomake
augroup end

map <C-n> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
