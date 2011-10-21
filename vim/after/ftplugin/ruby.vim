setlocal balloonexpr=

map <silent> <c-f> :call goto#rubyMethod('f')<CR>zz
map <silent> <c-b> :call goto#rubyMethod('b')<CR>zz

imap <silent> <F6> <ESC>:update<bar>sil !make -c %<bar>cwindow<CR>
imap <F7> <ESC>:update<bar>make %<CR>

map <silent> <F6> :update<bar>sil! make -c %<bar>cwindow<CR>
map <F7> :make %<CR>

compiler ruby
