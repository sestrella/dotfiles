call plug#begin('~/.local/share/nvim/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'airblade/vim-gitgutter'
"Plug 'godlygeek/tabular'
"Plug 'honza/vim-snippets'
"Plug 'neomake/neomake'
"Plug 'tpope/vim-projectionist'

" Haskell
"Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'nbouscal/vim-stylish-haskell'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'

" JavaScript
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

" Shell
Plug 'dag/vim-fish'

call plug#end()
