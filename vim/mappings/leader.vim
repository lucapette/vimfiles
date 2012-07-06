" Stop highlighting.
nmap <silent> <leader><space> :noh<cr>

" Search with Ack.vim.
nmap <leader>a :Ack<CR>

" Open CtrlP.vim in buffer-mode search.
nmap <leader>b :CtrlPBuffer<CR>

" Commit changes with fugitive.vim
nmap <leader>c :Gcommit<CR>

" Show the diff of current buffer with the git index version.
nmap <leader>d :Gdiff<CR>

" Delete the current line using the black-hole register.
nmap <leader>D "_dd

" Go to the next spelling error.
nmap <leader>n ]s

" Go to the previous spelling error.
nmap <leader>p [s

" Show a preview of the git current status.
nmap <leader>s :Gstatus<CR>

" Save the current buffer and trimspaces.
nmap <leader>w ma:w<bar>call utils#trimspaces()<CR>`a

" Show the spelling suggestions.
nmap <leader>z z=

" Highlight the current word without moving the cursor. Very handy.
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>

" Visual search with Ack.vim
vnoremap <leader>a y:Ack <c-r>=expand(@")<CR><CR>

" Tidy multiple assignment lines
vnoremap <leader>= :Tabularize assignment<CR>
