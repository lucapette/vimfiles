" Stop highlighting .
nmap <silent> <leader><space> :noh<cr>

" Search with Ack.vim
nmap <leader>a :Ack<CR>

" Open CtrlP.vim in buffer-mode search.
nmap <leader>b :CtrlPBuffer<CR>

" Commit changes with fugitive.vim
nmap <leader>c :Gcommit<CR>

" Show the diff of current buffer with the git index version.
nmap <leader>d :Gdiff<CR>

" Go to the next spelling error.
nmap <leader>n ]s

" Go to the previous spelling error.
nmap <leader>p [s

" Reload the current buffer from the git index.
nmap <leader>r :Gread<CR>

" Show a preview of the git current status.
nmap <leader>s :Gstatus<CR>

" Save the current buffer and stage the result.
nmap <leader>w :Gwrite<CR>

" Show the spelling suggestions.
nmap <leader>z z=

" Highlight the current word without moving the curson. Very handy.
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>
