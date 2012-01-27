inoremap <silent> <F1> <ESC>
inoremap <silent> <F2> <ESC> mm:w<bar>call utils#trimspaces()<CR>`m
inoremap <silent> <F4> <ESC> :NERDTreeToggle <C-R>=codepath#path()<CR><CR>
inoremap <silent> <F5> <ESC> gg=G``a
inoremap <buffer> <silent> <F9> <ESC> :set spell!<CR>i

nmap <silent> <F1> <ESC>
nmap <silent> <F2>  mm:w<bar>call utils#trimspaces()<CR>`m
nmap <silent> <F4> :NERDTreeToggle <C-R>=codepath#path()<CR><CR>
nmap <silent> <F5> gg=G``
nmap <buffer> <silent> <F9> :set spell!<CR>

inoremap <silent> <S-F4> <ESC>:NERDTree <C-R>=getcwd()<CR><CR>
nmap <silent> <S-F4> :NERDTree <C-R>=getcwd()<CR><CR>
