augroup intero
  autocmd!
  autocmd BufWritePost *.hs InteroReload
augroup END

noremap <silent><Leader>i? :LeaderGuide '<Leader>i'<CR>
noremap <silent><Leader>if :InteroLoadCurrentFile<CR>
noremap <silent><Leader>ih :InteroEval hspec spec<CR>
noremap <silent><Leader>ik :InteroKill<CR>
noremap <silent><Leader>im :InteroLoadCurrentModule<CR>
noremap <silent><Leader>io :InteroOpen<CR>
noremap <silent><Leader>ir :InteroRestart<CR>
noremap <silent><Leader>is :InteroStart<CR>
noremap <silent><Leader>it :InteroSetTargets<CR>
