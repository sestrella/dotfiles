let g:intero_start_immediately = 0

noremap <LocalLeader>if :InteroLoadCurrentFile<CR>
noremap <LocalLeader>ih :InteroEval hspec spec<CR>
noremap <LocalLeader>io :InteroOpen<CR>
noremap <LocalLeader>is :InteroStart<CR>
