" Stop highlighting.
nmap <silent> <leader><space> :noh<cr>

" Alternate Rails.vim or Rake.vim
nmap <leader>a :A<CR>

" Open CtrlP.vim in buffer-mode search.
nmap <leader>b :CtrlPBuffer<CR>

" Show the diff of current buffer with the git index version.
nmap <leader>d :Gdiff<CR>

" Open a Tree in the current project directory.
nmap <leader>e :Vexplore<CR>
nmap <leader>E :Vexplore <C-R>=codepath#path()<CR><CR>

" Show a preview of the git current status.
nmap <leader>s :Gstatus<CR>

" Save the current buffer and trimspaces.
nmap <leader>w ma:w<bar>call utils#trimspaces()<CR>`a

" Highlight the current word without moving the cursor. Very handy.
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>

" Tidy multiple assignment lines
vnoremap <leader>= :Tabularize assignment<CR>
