" Please help go to hell.
inoremap <silent> <F1> <ESC>

" Save the current buffer and trimspaces.
inoremap <silent> <F2> <ESC> mm:w<bar>call utils#trimspaces()<CR>`m

" Open a Tree in the current project directory.
inoremap <silent> <F4> <ESC> :NERDTreeToggle <C-R>=codepath#path()<CR><CR>

" Indent all the file with one keystroke. See http://lucapette.com/vim/rails/vim-for-rails-developers-indenting-code.
inoremap <silent> <F5> <ESC> gg=G``a

" Toggle spell checking.
inoremap <silent> <F9> <ESC> :set invspell<CR>i

" Normal mapping for just commented stuff
nmap <silent> <F1> <ESC>
nmap <silent> <F2>  mm:w<bar>call utils#trimspaces()<CR>`m
nmap <silent> <F4> :NERDTreeToggle <C-R>=codepath#path()<CR><CR>
nmap <silent> <F5> gg=G``
nmap <silent> <F9> :set invspell<CR>

" Open a Tree in the current working directory.
inoremap <silent> <S-F4> <ESC>:NERDTree <C-R>=getcwd()<CR><CR>
nmap <silent> <S-F4> :NERDTree <C-R>=getcwd()<CR><CR>
