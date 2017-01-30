" netrw
let g:netrw_liststyle = 3
let g:netrw_preview   = 1
let g:netrw_winsize   = 30

" CtrlP
let g:ctrlp_map                   = ',,'
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_user_command          = ['.git/', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode     = 'r'

" RubyComplete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_include_object = 0
let g:rubycomplete_rails          = 0

" I started liking fancy things
let g:airline_symbols =  get(g:, 'airline_symbols', {})

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_section_c = '%F'

let g:markdown_fenced_languages = ['html', 'ruby', 'bash=sh', 'js=javascript']

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:omni_sql_no_default_maps = 1
