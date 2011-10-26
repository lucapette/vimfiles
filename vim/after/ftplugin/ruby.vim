setlocal balloonexpr=

nmap <buffer> <silent> <c-f> :call goto#rubyMethod('f')<CR>zz
nmap <buffer> <silent> <c-b> :call goto#rubyMethod('b')<CR>zz

inoremap <buffer> <silent> <F6> <ESC>:update<bar>sil !make -c %<bar>cwindow<CR>
inoremap <buffer> <F7> <ESC>:update<bar>make %<CR>

nmap <buffer> <silent> <F6> :update<bar>sil! make -c %<bar>cwindow<CR>
nmap <buffer> <F7> :make %<CR>

compiler ruby
