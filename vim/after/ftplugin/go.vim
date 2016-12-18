setlocal shiftwidth=4

nmap <buffer> <silent> <leader>i :GoImports<CR>
nmap <buffer> <silent> <leader>t :TagbarToggle<CR>

nmap <buffer> <silent> <leader>r <Plug>(go-run)
nmap <buffer> <silent> <leader>b <Plug>(go-build)
nmap <buffer> <silent> <leader>t <Plug>(go-test)
nmap <buffer> <silent> <leader>c <Plug>(go-coverage)
