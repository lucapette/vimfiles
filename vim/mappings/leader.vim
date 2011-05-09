map <leader><space> :noh<cr>
map <leader>A :copen<CR>
map <leader>a :Ack 
map <leader>c :Gcommit<CR>
map <leader>n ]s
map <leader>p [s
map <leader>s :Gstatus<CR>
map <leader>w :Gwrite<CR>
map <leader>q :Gwq<CR>
map <leader>z z=

vnoremap <leader>a y:Ack <c-r>=expand(@")<CR><CR>
