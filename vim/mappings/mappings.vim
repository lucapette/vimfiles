"Personal command  mapping
map   <silent> <F2> :write<CR>
map   <silent> <F3> :set invrelativenumber<CR>
nnoremap <silent> <F4> :NERDTreeToggle `=CodePath()`<cr>
map   <silent> <F5> gg=G<CR><C-O><C-O>
map   <silent> <F9> :set spell!<CR>
map   <silent> <C-T> :FuzzyFinderTextMate<CR>
map  <C-N> :cn<CR>
map  <C-P> :cp<CR>
map " ci"

imap  <silent> <F2> <Esc> :write<CR>
imap  <silent> <F3> <Esc> :set invrelativenumber<CR>
inoremap <silent> <F4> <Esc>:NERDTreeToggle `=CodePath()` <cr>
imap  <silent> <F5> <Esc> gg=G<CR><C-O><C-O>
imap  <silent> <F9> <Esc> :set spell!<CR>
imap  <silent> <C-T> <Esc> :FuzzyFinderTextMate<CR>


" windows
map + <C-W>+
map - <C-W>-
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" sane regex
nnoremap / /\v
vnoremap / /\v
nnoremap <space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" select all plus yank all plus cut all
nmap <C-A> ggVG
nmap <C-Y> <c-a>y
nmap <C-X> <c-a>x

"Do not lost block selection after indentation. Such a good thing!
vmap > >gv
vmap < <gv

" Zen time
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

"Code completion with ctrl-space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
