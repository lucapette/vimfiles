"Leader based mappings
map <leader>z z=
map <leader>n ]s
map <leader>p [s
nnoremap <leader>/ :noh<cr>
map <leader><space> :g/^\n$/d<CR>

map <leader>a :Ack 
map <leader>A :copen<CR>
map <leader>s :Gstatus<CR>
map <leader>w :Gwrite<CR>
map <leader>c :Gcommit<CR>
vnoremap <leader>a y:Ack <c-r>=expand(@")<CR><CR>
