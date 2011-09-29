map <leader><space> :noh<cr>
map <leader>A :copen<CR>
map <leader>B :CommandTBuffer<CR>
map <leader>a :Ack <c-r>=expand("<cword>")<CR><CR>
map <leader>c :Gcommit<CR>
map <leader>d :Gdiff<CR>
map <leader>n ]s
map <leader>p [s
map <leader>q :Gwq<CR>
map <leader>r :Gread<CR>
map <leader>s :Gstatus<CR>
map <leader>w :Gwrite<CR>
map <leader>z z=
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>
