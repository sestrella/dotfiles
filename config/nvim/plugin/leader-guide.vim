let g:lmap = {}
let g:lmap.a = { 'name' : 'projectionist' }
let g:lmap.c = { 'name' : 'nerdcommenter' }
let g:lmap.p = { 'name' : 'vim-plug' }

call leaderGuide#register_prefix_descriptions(',', 'g:lmap')
nnoremap <LocalLeader> :<C-U>LeaderGuide  ','<CR>
vnoremap <LocalLeader> :<C-U>LeaderGuideVisual  ','<CR>
