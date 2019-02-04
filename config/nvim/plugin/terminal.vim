noremap <Leader>t :split<CR>:terminal<CR>:startinsert<CR>

tnoremap <Esc> <C-\><C-n>

augroup terminal_group
  autocmd!
  autocmd TermOpen * setlocal nonumber
augroup END
