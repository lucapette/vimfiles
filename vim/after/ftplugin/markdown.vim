imap <buffer> <F7> <ESC>:call markdown#Preview()<CR>
map <buffer> <F7> :call markdown#Preview()<CR>

vmap <leader>l S[lxf]hxa()<esc>i

map <buffer> <silent> <leader>1 :call markdown#Headerify(1)<CR>
map <buffer> <silent> <leader>2 :call markdown#Headerify(2)<CR>
map <buffer> <silent> <leader>3 :call markdown#Headerify(3)<CR>
map <buffer> <silent> <leader>4 :call markdown#Headerify(4)<CR>
map <buffer> <silent> <leader>5 :call markdown#Headerify(5)<CR>
map <buffer> <silent> <leader>6 :call markdown#Headerify(6)<CR>
