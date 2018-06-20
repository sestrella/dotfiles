let g:python_host_prog = expand('~/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'neomake/neomake'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Haskell
Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'nbouscal/vim-stylish-haskell'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'

" JavaScript
Plug 'carlitux/deoplete-ternjs'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

" Ruby
Plug 'thoughtbot/vim-rspec'

" TypeScript
Plug 'leafgarland/typescript-vim'

call plug#end()
