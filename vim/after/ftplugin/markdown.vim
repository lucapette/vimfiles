" Quick markdown link creation
" requires surround.vim
nmap <leader>l csw]f]a()<ESC>i
vmap <leader>l S]f]a()<ESC>i

nmap <buffer> <silent> <leader>1 :call markdown#headerify(1)<CR>
nmap <buffer> <silent> <leader>2 :call markdown#headerify(2)<CR>
nmap <buffer> <silent> <leader>3 :call markdown#headerify(3)<CR>
nmap <buffer> <silent> <leader>4 :call markdown#headerify(4)<CR>
nmap <buffer> <silent> <leader>5 :call markdown#headerify(5)<CR>
nmap <buffer> <silent> <leader>6 :call markdown#headerify(6)<CR>
