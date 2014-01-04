nmap <buffer> <silent> <leader>a :call test_runner#RunFile()<CR>
nmap <buffer> <silent> <leader>c :call ruby#checkSyntax()<CR>
nmap <buffer> <silent> <leader>t :call test_runner#RunNearest()<CR>

setlocal shiftwidth=2
