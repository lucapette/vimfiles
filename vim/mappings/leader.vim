nmap <silent> <leader><space> :noh<cr>
nmap <leader>a :Ack <c-r>=expand("<cword>")<CR><CR>
nmap <leader>c :Gcommit<CR>
nmap <leader>d :Gdiff<CR>
nmap <leader>n ]s
nmap <leader>p [s
nmap <leader>q :Gwq<CR>
nmap <leader>r :Gread<CR>
nmap <leader>s :Gstatus<CR>
nmap <leader>w :Gwrite<CR>
nmap <leader>W :Gwrite<bar>Gcommit<CR>
nmap <leader>z z=
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>
