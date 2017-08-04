augroup hpack
  autocmd!
  autocmd BufWritePost package.yaml silent !hpack --silent
augroup END
