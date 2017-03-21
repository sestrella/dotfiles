call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'altercation/vim-colors-solarized'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

nnoremap <leader>pi :source $MYVIMRC<cr>:PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>