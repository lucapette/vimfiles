nmap <silent> <C-N> :cn<CR>
nmap <silent> <C-P> :cp<CR>

" windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

inoremap <silent> <C-F> <C-X><C-F>

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
inoremap <C-@> <C-Space>

"User defined completion with ctrl-u
inoremap <expr> <C-u> pumvisible() \|\| &completefunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-u><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
