setlocal balloonexpr=

map <buffer> <silent> <c-f> :call goto#rubyMethod('f')<CR>zz
map <buffer> <silent> <c-b> :call goto#rubyMethod('b')<CR>zz

imap <buffer> <silent> <F6> <ESC>:update<bar>sil !make -c %<bar>cwindow<CR>
imap <buffer> <F7> <ESC>:update<bar>make %<CR>

map <buffer> <silent> <F6> :update<bar>sil! make -c %<bar>cwindow<CR>
map <buffer> <F7> :make %<CR>

compiler ruby
