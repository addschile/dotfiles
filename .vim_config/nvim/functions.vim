fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

function ClangFormatBuffer()
  "if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
  let cursor_pos = getpos('.')
  :%!clang-format
  call setpos('.', cursor_pos)
  "endif
endfunction

augroup FORMATBUFFER
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.cxx,*.hxx,*.cu :call ClangFormatBuffer()
augroup END
