fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

function PythonBlackFormatBuffer()
  let cursor_pos = getpos('.')
  :silent !black %
  call setpos('.', cursor_pos)
endfunction

function PythonIsortFormatBuffer()
  let cursor_pos = getpos('.')
  :silent !isort %
  call setpos('.', cursor_pos)
endfunction

function PythonYapfFormatBuffer()
  let yapf_path = system('which yapf')
  if len(yapf_path) != 0
    let cursor_pos = getpos('.')
    :silent !yapf -i %
    call setpos('.', cursor_pos)
  endif
endfunction

function ClangFormatBuffer()
  "if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
  let cursor_pos = getpos('.')
  :%!clang-format
  call setpos('.', cursor_pos)
  "endif
endfunction

augroup FORMATBUFFER
    autocmd!
    "autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.cxx,*.hxx,*.cu,*.cuh :call ClangFormatBuffer()
    autocmd BufWritePost *.py,*.pyx :call PythonYapfFormatBuffer()
    "autocmd BufWritePost *.py,*.pyx :call PythonBlackFormatBuffer()
    "autocmd BufWritePost *.py,*.pyx :call PythonIsortFormatBuffer()
augroup END
