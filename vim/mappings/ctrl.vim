" Next and previous error in quickfix list.
nmap <silent> <C-N> :cn<CR>
nmap <silent> <C-P> :cp<CR>

" Handy windows movements.
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Let me complete files quickly in insert-mode.
inoremap <silent> <C-F> <C-X><C-F>

" Select the entire buffer.
nmap <C-A> ggVG

" Trigger zencoding expansion.
imap <c-e> <c-y>,

"Omni completion with ctrl-space.
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
inoremap <C-@> <C-Space>

" User defined completion with ctrl-u.
inoremap <expr> <C-u> pumvisible() \|\| &completefunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-u><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
