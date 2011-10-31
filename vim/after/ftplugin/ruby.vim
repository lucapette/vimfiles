setlocal balloonexpr=

nmap <buffer> <silent> <c-f> :call ruby#goto('f')<CR>zz
nmap <buffer> <silent> <c-b> :call ruby#goto('b')<CR>zz

inoremap <buffer> <silent> <F6> <ESC>:update<bar>sil !make -c %<bar>cwindow<CR>
inoremap <buffer> <F7> <ESC>:update<bar>make %<CR>

nmap <buffer> <silent> <F6> :update<bar>sil! make -c %<bar>cwindow<CR>
nmap <buffer> <F7> :make %<CR>

noremap <buffer> RB :call ruby#apidock('ruby',  expand('<cword>'))<CR>
noremap <buffer> RR :call ruby#apidock('rails', expand('<cword>'))<CR>
noremap <buffer> RS :call ruby#apidock('rspec', expand('<cword>'))<CR>

compiler ruby
