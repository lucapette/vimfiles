" Stop highlighting.
nmap <silent> <leader><space> :noh<cr>

" Alternate Rails.vim or Rake.vim
nmap <leader>a :A<CR>

" Alternate Rails.vim or Rake.vim
nmap <leader>A :AV<CR><C-w>h

" Open CtrlP.vim in buffer-mode search.
nmap <leader>b :CtrlPBuffer<CR>

" Show the diff of current buffer with the git index version.
nmap <leader>d :Gdiff<CR>

" Open a Tree in the current project directory.
nmap <leader>e :Vexplore<CR>
nmap <leader>E :Vexplore <C-R>=rootfinder#current()<CR><CR>

" Indent all the file with one keystroke.
" See http://lucapette.com/vim/rails/vim-for-rails-developers-indenting-code.
nmap <leader>i gg=G``

nmap <leader>t :CtrlPTag<CR>

" Show a preview of the git current status.
nmap <leader>s :Gstatus<CR>

" Save the current buffer and trimspaces.
nmap <leader>w ma:w<bar>call utils#trimspaces()<CR>`a

" Highlight the current word without moving the cursor. Very handy.
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>
