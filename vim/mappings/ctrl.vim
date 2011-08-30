map   <silent> <C-T> :FuzzyFinderTextMate<CR>
imap  <silent> <C-T> <Esc> :FuzzyFinderTextMate<CR>
map <silent> <C-N> :cn<CR>
map <silent> <C-P> :cp<CR>

" save and indent
map <silent> <C-S> :w<CR><F5>

" windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

imap <silent> <C-F> <C-X><C-F>

" select all
nmap <C-A> ggVG

" zencoding map
nmap <c-e> <c-y>,
imap <c-e> <c-y>,

"Omni completion with ctrl-space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"User defined completion with ctrl-u
inoremap <expr> <C-u> pumvisible() \|\| &completefunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-u><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
