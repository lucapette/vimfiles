" netrw
let g:netrw_liststyle = 3
let g:netrw_preview   = 1

" ultisnips
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories  = ["snippets"]
let g:UltiSnipsDoHash              = 0

" CtrlP
let g:ctrlp_extensions            = ['tag']
let g:ctrlp_map                   = ',,'
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_user_command          = ['.git/', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode     = 'r'

" RubyComplete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_include_object = 0
let g:rubycomplete_rails          = 0

" RubyRunner
let g:RubyRunner_open_below  = 1
let g:RubyRunner_window_size = 10

" CoffeeScript
let coffee_compile_vert = 1

" Surround
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"

" Vimux Turbux
let g:VimuxHeight = '30'
let g:turbux_command_rspec = 'rspec --color'
let g:no_turbux_mappings   = 0
