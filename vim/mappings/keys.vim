" Please help go to hell.
ino <silent> <F1> <ESC>
nmap <silent> <F1> <ESC>

" Open a Tree in the current project directory.
ino <silent> <F4> <ESC> :Vexplore <C-R>=codepath#path()<CR><CR>
nmap <silent> <F4> :Vexplore <C-R>=codepath#path()<CR><CR>

" Indent all the file with one keystroke.
" See http://lucapette.com/vim/rails/vim-for-rails-developers-indenting-code.
ino <silent> <F5> <ESC> gg=G``a
nmap <silent> <F5> gg=G``

" Toggle spell checking.
ino <silent> <F9> <ESC> :call utils#toggleSpell()<CR>i
nmap <silent> <F9> :call utils#toggleSpell()<CR>

" Open a Tree in the current working directory.
ino <silent> <S-F4> <ESC>:Vexplore<CR>
nmap <silent> <S-F4> :Vexplore<CR>
