inoremap <buffer> <F7> <ESC>:call markdown#preview()<CR>
nmap <buffer> <F7> :call markdown#preview()<CR>

nmap <leader>l ve:<c-u>call markdown#linkify()<CR>
vnoremap <leader>l :<c-u>call markdown#linkify()<CR>

nmap <leader>b ve:<c-u>call markdown#boldify()<CR>
vnoremap <leader>b :<c-u>call markdown#boldify()<CR>

nmap <leader>i ve:<c-u>call markdown#italicize()<CR>
vnoremap <leader>i :<c-u>call markdown#italicize()<CR>

nmap <buffer> <silent> <leader>1 :call markdown#headerify(1)<CR>
nmap <buffer> <silent> <leader>2 :call markdown#headerify(2)<CR>
nmap <buffer> <silent> <leader>3 :call markdown#headerify(3)<CR>
nmap <buffer> <silent> <leader>4 :call markdown#headerify(4)<CR>
nmap <buffer> <silent> <leader>5 :call markdown#headerify(5)<CR>
nmap <buffer> <silent> <leader>6 :call markdown#headerify(6)<CR>

setlocal ballooneval
setlocal balloonexpr=markdown#spellBalloon()
