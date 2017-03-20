source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/vim-plug.vim

let g:deoplete#enable_at_startup = 1

syntax enable
set background=dark
colorscheme solarized

let g:neomake_haskell_enabled_makers = ['ghcmod']

autocmd! BufReadPost,BufWritePost * Neomake

let g:NERDTreeShowHidden = 1

noremap <c-n> :NERDTreeToggle<cr>

noremap <leader>fw :FixWhitespace<cr>

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

augroup necoghc
  autocmd!
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup end
