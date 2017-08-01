if executable('hasktags')
  augroup hasktags
    autocmd!
    autocmd BufWritePost *.hs :silent exec "!hasktags -c ."
  augroup END
endif
