" Use the regex in a sane way.
nnoremap / /\v
vnoremap / /\v

" Zen time. Do it. You'll understand later.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Re-execute the stored q macro.
nmap Q @q

" While searching scroll to the center of the window.
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" splitjoin.vim mappings
nmap sj :SplitjoinSplit<CR>
nmap sk :SplitjoinJoin<CR>
