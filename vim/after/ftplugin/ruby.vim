setlocal balloonexpr=
map <silent> <c-f> :call goto#rubyMethod('f')<CR>zz
map <silent> <c-b> :call goto#rubyMethod('b')<CR>zz

compiler ruby
