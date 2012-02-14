" Don't show the ri -T information.
setlocal balloonexpr=

" Go to next/previous method definition.
nmap <buffer> <silent> <c-f> :call ruby#goto('f')<CR>zz
nmap <buffer> <silent> <c-b> :call ruby#goto('b')<CR>zz

" Compile the current buffer and show the quickfix window if necessary.
ino <buffer> <silent> <F6> <ESC>:update<bar>sil !make -c %<bar>cwindow<CR>
nmap <buffer> <silent> <F6> :update<bar>sil! make -c %<bar>cwindow<CR>

" Execute the current buffer.
ino <buffer> <F7> <ESC>:update<bar>make %<CR>
nmap <buffer> <F7> :make %<CR>

compiler ruby
