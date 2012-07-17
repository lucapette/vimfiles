" Please help go to hell.
ino <silent> <F1> <ESC>
nmap <silent> <F1> <ESC>

" Indent all the file with one keystroke.
" See http://lucapette.com/vim/rails/vim-for-rails-developers-indenting-code.
ino <silent> <F5> <ESC> gg=G``a
nmap <silent> <F5> gg=G``

" Toggle spell checking.
ino <silent> <F9> <ESC> :call utils#toggleSpell()<CR>i
nmap <silent> <F9> :call utils#toggleSpell()<CR>
