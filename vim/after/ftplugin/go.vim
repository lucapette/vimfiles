setlocal shiftwidth=4

nmap <buffer> <silent> <leader>c <Plug>(go-build)
nmap <buffer> <silent> <leader>r <Plug>(go-run)
nmap <buffer> <silent> <leader>t :call utils#RunCommand("go test -v .")<CR>
