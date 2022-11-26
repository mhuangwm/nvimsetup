set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

function! GoFmt()
  let saved_view = winsaveview()
  silent %!gofmt
  if v:shell_error > 0
    cexpr getline(1, '$')->map({ idx, val -> val->substitute('<standard input>', expand('%'), '') })
    silent undo
    cwindow
  endif
  call winrestview(saved_view)
endfunction

command! GoFmt call GoFmt()

augroup go_autocmd
  autocmd BufWritePre *.go GoFmt
augroup END

let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_generate_tags = 1
