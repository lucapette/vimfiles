inoremap <silent> <F1> <ESC>
inoremap <silent> <F2> <ESC> mm:w<CR>:silent! %s/\s\+$//<CR>`m
inoremap <silent> <F3> <ESC> :set invrelativenumber<CR>
inoremap <silent> <F5> <ESC> mmgg=G`m
inoremap <silent> <F9> <ESC> :set spell!<CR>
inoremap <silent> <F10> <ESC> :set invlist<CR>
inoremap <silent> <F11> <ESC>:Rlog<CR><c-w>P<c-w>J

nmap <silent> <F1> <ESC>
nmap <silent> <F2> mm:w<CR>:silent! %s/\s\+$//<CR>`m
nmap <silent> <F3> :set invrelativenumber<CR>
nmap <silent> <F5> mmgg=G`m
nmap <silent> <F9> :set spell!<CR>
nmap <silent> <F10> :set invlist<CR>
nmap <silent> <F11> :Rlog<CR><c-w>P<c-w>J

nmap <silent> <F4> :NERDTreeToggle `=codepath#path()`<CR>
nmap <silent> <S-F4> :NERDTree <C-R>=expand("%:p:h")<CR><CR>
