" Ctrl-based mappings

map   <silent> <C-T> :FuzzyFinderTextMate<CR>
imap  <silent> <C-T> <Esc> :FuzzyFinderTextMate<CR>
map  <C-N> :cn<CR>
map  <C-P> :cp<CR>

" windows
map + <C-W>>
map - <C-W><
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" select all plus yank all plus cut all
nmap <C-A> ggVG

"Code completion with ctrl-space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
