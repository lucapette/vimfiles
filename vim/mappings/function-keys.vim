map <F1> <ESC>
map   <silent> <F2> :write<CR>
map   <silent> <F3> :set invrelativenumber<CR>
nnoremap <silent> <F4> :NERDTreeToggle `=CodePath()`<CR>
nnoremap <silent> <S-F4> :NERDTree <C-R>=expand("%:p:h")<CR><CR>
map   <silent> <F5> mmgg=G'm
map   <silent> <F9> :set spell!<CR>
imap  <silent> <F2> <Esc> :write<CR>
imap  <silent> <F3> <Esc> :set invrelativenumber<CR>
imap <F1> <ESC>
imap  <silent> <F5> <Esc> mmgg=G'm
imap  <silent> <F9> <Esc> :set spell!<CR>
