" Use the regex in a sane way.
nnoremap / /\v
vnoremap / /\v

" While searching scroll to the center of the window.
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" splitjoin.vim mappings
nmap sj :SplitjoinSplit<CR>
nmap sk :SplitjoinJoin<CR>
