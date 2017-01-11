setlocal shiftwidth=4

nmap <buffer> <silent> <leader>a :GoAlternate<CR>
nmap <buffer> <silent> <leader>i :GoImports<CR>

nmap <buffer> <silent> <leader>B :GoBuild<CR>
nmap <buffer> <silent> <leader>T <Plug>(go-test)
nmap <buffer> <silent> <leader>c <Plug>(go-coverage)
nmap <buffer> <silent> <leader>r <Plug>(go-run)
nmap <buffer> <silent> <leader>t <Plug>(go-test-func)
