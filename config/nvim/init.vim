set colorcolumn=80 " display vertical line at 80 chars
set cursorline     " show cursor position
set expandtab      " replace tabs with spaces
set mouse=""       " disable mouse
set number         " display line numbers
set shiftwidth=2   " 1 tab == 2 spaces

let g:mapleader=','

for g:fpath in split(globpath('~/.config/nvim/pre-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor

call g:plug#begin('~/.config/nvim/plugged')

if filereadable(expand('~/.config/nvim/plugins.vim'))
  source ~/.config/nvim/plugins.vim
endif

call g:plug#end()

for g:fpath in split(globpath('~/.config/nvim/post-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor
