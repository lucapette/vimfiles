imap  <silent> <F2> <Esc> :write<CR>:silent !%s/\s\+$//<cr>
imap  <silent> <F3> <Esc> :set invrelativenumber<CR>
imap  <silent> <F5> <Esc> mmgg=G'm
imap  <silent> <F9> <Esc> :set spell!<CR>
imap <silent> <F10> <Esc> :set invlist<CR>
imap <silent> <F1> <ESC>

map   <silent> <F2> :write<CR>:silent! %s/\s\+$//<cr>
map   <silent> <F3> :set invrelativenumber<CR>
map   <silent> <F5> mmgg=G'm
map   <silent> <F9> :set spell!<CR>
map <silent> <F10> :set invlist<CR>
map <silent> <F1> <ESC>

nnoremap <silent> <F4> :NERDTreeToggle `=codepath#path()`<CR>
nnoremap <silent> <S-F4> :NERDTree <C-R>=expand("%:p:h")<CR><CR>
