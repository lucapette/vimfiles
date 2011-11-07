inoremap <silent> <F1> <ESC>
inoremap <silent> <F2> <ESC> mm:w<bar>call utils#trimspaces()<CR>`m
inoremap <silent> <F3> <ESC> :set invrelativenumber<CR>i
inoremap <silent> <F5> <ESC> gg=G``a
inoremap <silent> <F9> <ESC> :set spell!<CR>i
inoremap <silent> <F10> <ESC> :set invlist<CR>i
inoremap <silent> <F11> <ESC>:let old_wildignore=&wildignore<bar>let &wildignore=""<bar>Rlog<bar>let &wildignore=old_wildignore<CR>

nmap <silent> <F1> <ESC>
nmap <silent> <F2>  mm:w<bar>call utils#trimspaces()<CR>`m
nmap <silent> <F3> :set invrelativenumber<CR>
nmap <silent> <F4> :NERDTreeToggle <C-R>=codepath#path()<CR><CR>
nmap <silent> <F5> gg=G``
nmap <silent> <F9> :set spell!<CR>
nmap <silent> <F10> :set invlist<CR>
nmap <silent> <F11> :let old_wildignore=&wildignore<bar>let &wildignore=""<bar>Rlog<bar>let &wildignore=old_wildignore<CR>

nmap <silent> <S-F4> :NERDTree <C-R>=expand("%:p:h")<CR><CR>
