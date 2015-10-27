set colorcolumn=80 " display vertical line at 80 chars
set cursorline " show cursor position
set mouse="" " disable mouse selection
set number " show line numbers
set textwidth=80 " wrap text longer than 80 chars

set expandtab " replace tabs with spaces
set shiftwidth=2 " 1 tab == 2 spaces

let g:mapleader=','

nmap <leader>w :w!<cr>
nmap <leader>g G=gg<cr>

for g:fpath in split(globpath('~/.vim/pre-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor

if filereadable(expand('~/.vim/plugins.vim'))
  source ~/.vim/plugins.vim
endif

for g:fpath in split(globpath('~/.vim/post-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor
