set colorcolumn=80 " display vertical line at 80 chars
set cursorline " show cursor position
set mouse="" " disable mouse selection
set number " show line numbers
set textwidth=80 " wrap text longer than 80 chars

set expandtab " replace tabs with spaces
set shiftwidth=2 " 1 tab == 2 spaces

set hlsearch " highlight search matches
set ignorecase " ignore case while searching
set incsearch " search like in modern browsers
set smartcase " enabled case-sensitve only when first letter is uppercase

set backupdir=/tmp
set directory=/tmp

let g:mapleader=','

let g:airline_powerline_fonts=1
for fpath in split(globpath('~/.nvim/pre-plugins', '*.vim'), '\n')
  exe 'source' fpath
endfor

call g:plug#begin('~/.nvim/plugged')

if filereadable(expand('~/.nvim/plugins.vim'))
  source ~/.nvim/plugins.vim
endif

call g:plug#end()

syntax enable
set background=dark
colorscheme solarized

" move across wrapped lines
map j gj
map k gk

noremap <leader><space> :nohlsearch<CR>

for fpath in split(globpath('~/.nvim/post-plugins', '*.vim'), '\n')
  exe 'source' fpath
endfor
