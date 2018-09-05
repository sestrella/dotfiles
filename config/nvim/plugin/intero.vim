let g:intero_start_immediately = 0

augroup intero
  autocmd!
  autocmd BufWritePost *.hs InteroReload
augroup END
