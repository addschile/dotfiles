fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

function PythonYapfFormatBuffer()
  let yapf_path = system('which yapf')
  if len(yapf_path) != 0
    let cursor_pos = getpos('.')
    :silent !yapf -i %
    call setpos('.', cursor_pos)
  endif
endfunction

function PythonIsortFormatBuffer()
  let isort_path = system('which isort')
  if len(isort_path) != 0
    let cursor_pos = getpos('.')
    :silent !isort %
    call setpos('.', cursor_pos)
  endif
endfunction

function ClangFormatBuffer()
  let clang_format_path = system('which clang-format')
  if len(clang_format_path) != 0
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction

augroup FORMATBUFFER
    autocmd!
    "autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.cxx,*.hxx,*.cu,*.cuh :call ClangFormatBuffer()
    autocmd BufWritePost *.py,*.pyx :call PythonYapfFormatBuffer()
    autocmd BufWritePost *.py,*.pyx :call PythonIsortFormatBuffer()
augroup END
