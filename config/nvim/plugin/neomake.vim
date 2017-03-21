let g:neomake_haskell_enabled_makers = ['ghcmod']

autocmd! BufWritePost * Neomake
