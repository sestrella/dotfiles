let s:asdf_dir = expand('~/.asdf/installs/python/')

let g:python_host_prog = s:asdf_dir . '2.7.16/bin/python'
let g:python3_host_prog = s:asdf_dir . '3.7.4/bin/python'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'

call plug#end()
