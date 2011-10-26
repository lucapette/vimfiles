imap <buffer> <F7> <ESC>:call markdown#preview()<CR>
map <buffer> <F7> :call markdown#preview()<CR>

nmap <leader>l ve:<c-u>call markdown#linkify()<CR>
vmap <leader>l :<c-u>call markdown#linkify()<CR>

map <buffer> <silent> <leader>1 :call markdown#headerify(1)<CR>
map <buffer> <silent> <leader>2 :call markdown#headerify(2)<CR>
map <buffer> <silent> <leader>3 :call markdown#headerify(3)<CR>
map <buffer> <silent> <leader>4 :call markdown#headerify(4)<CR>
map <buffer> <silent> <leader>5 :call markdown#headerify(5)<CR>
map <buffer> <silent> <leader>6 :call markdown#headerify(6)<CR>
