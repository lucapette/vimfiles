" Go to next/previous method definition.
nmap <buffer> <silent> <c-f> :call ruby#goto('f')<CR>zz
nmap <buffer> <silent> <c-b> :call ruby#goto('b')<CR>zz

" Toggle focus: true on RSpec blocks.
nmap <buffer> <silent> <leader>f :call ruby#toggleFocus()<CR>

nmap <buffer> <silent> <leader>c :call ruby#checkSyntax()<CR>
