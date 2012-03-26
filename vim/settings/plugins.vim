" NERDTree
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeQuitOnOpen  = 1

" zencoding
let g:user_zen_settings = { 'indentation' : '  '}

" ultisnips
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories  = ["snippets"]
let g:UltiSnipsDoHash              = 0

" CtrlP
let g:ctrlp_extensions            = ['tag']
let g:ctrlp_map                   = '<c-t>'
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
" Doesn't work well with ignored files
" let g:ctrlp_user_command          = ['.git/', 'cd %s && git ls-files -c -o']
let g:ctrlp_working_path_mode     = 2

" RubyComplete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_include_object = 0
let g:rubycomplete_rails          = 0

" RubyRunner
let g:RubyRunner_open_below  = 1
let g:RubyRunner_window_size = 10

" blocke
let g:blockle_mapping = '<Leader>B'

" CoffeeScript
let coffee_compile_vert = 1

" Surround
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"
