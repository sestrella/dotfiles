augroup intero
  autocmd!
  autocmd BufWritePost *.hs InteroReload
augroup END

noremap <Leader>if :InteroLoadCurrentFile<CR>
noremap <Leader>ih :InteroHide<CR>
noremap <Leader>ik :InteroKill<CR>
noremap <Leader>im :InteroLoadCurrentModule<CR>
noremap <Leader>io :InteroOpen<CR>
noremap <Leader>ir :InteroReload<CR>
noremap <Leader>is :InteroStart<CR>
noremap <Leader>it :InteroEval hspec spec<CR>
