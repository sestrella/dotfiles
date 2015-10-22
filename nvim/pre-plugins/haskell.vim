if executable('stylish-haskell')
  augroup haskell
    autocmd! BufWritePost *.hs :silent %!stylish-haskell
  augroup END
endif
