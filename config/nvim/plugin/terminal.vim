tnoremap <Esc> <C-\><C-n>

augroup terminal
  autocmd!
  autocmd TermOpen * setlocal nonumber
augroup END
