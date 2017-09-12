let g:lmap = {}
let g:lmap.a = { 'name' : 'projectionist' }
let g:lmap.c = { 'name' : 'nerdcommenter' }
let g:lmap.i = { 'name' : 'intero' }
let g:lmap.p = { 'name' : 'vim-plug' }

call leaderGuide#register_prefix_descriptions('<Space>', 'g:lmap')
nnoremap <LocalLeader> :<C-U>LeaderGuide  '<Space>'<CR>
vnoremap <LocalLeader> :<C-U>LeaderGuideVisual  '<Space>'<CR>
