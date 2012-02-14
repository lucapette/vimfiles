" Compile the current buffer and show me the quickfix window if necessary.
ino <buffer> <silent> <F6> <ESC>:update<bar>sil CoffeeMake<bar>cwindow<CR>
nmap <buffer> <silent> <F6> :update<bar>sil CoffeeMake<bar>cwindow<CR>

" Execute the current buffer.
ino <buffer> <F7> <ESC>:update<bar>CoffeeRun<CR>
nmap <buffer> <F7> :update<bar>CoffeeRun<CR>

" Show me the compiled JavaScript.
ino <buffer> <F8> <ESC>:update<bar>CoffeeCompile watch<CR>
nmap <buffer> <F8> :update<bar>CoffeeCompile watch<CR>
