imap <silent> <F1> <ESC>
imap <silent> <F2> <ESC> :write<CR>:silent !%s/\s\+$//<cr>
imap <silent> <F3> <ESC> :set invrelativenumber<CR>
imap <silent> <F5> <ESC> mmgg=G`m
imap <silent> <F9> <ESC> :set spell!<CR>
imap <silent> <F10> <ESC> :set invlist<CR>

map <silent> <F1> <ESC>
map <silent> <F2> :write<CR>:silent! %s/\s\+$//<cr>
map <silent> <F3> :set invrelativenumber<CR>
map <silent> <F5> mmgg=G`m
map <silent> <F9> :set spell!<CR>
map <silent> <F10> :set invlist<CR>

map <silent> <F4> :NERDTreeToggle `=codepath#path()`<CR>
map <silent> <S-F4> :NERDTree <C-R>=expand("%:p:h")<CR><CR>
