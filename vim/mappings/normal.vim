" insert from the clipboard
nmap <S-Insert> "+p
inoremap <S-Insert> <esc>"+pi

" sane regex
nnoremap / /\v
vnoremap / /\v

" Zen time. Do it. You'll understand later
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" re-execute the stored q macro
nmap Q @q

" non-blank characters moving
nmap j +
nmap k -

" search and move
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" call docs
noremap RB :call apidock#openUrl('ruby', expand('<cword>'))<CR>
noremap RR :call apidock#openUrl('rails', expand('<cword>'))<CR>
noremap RS :call apidock#openUrl('rspec', expand('<cword>'))<CR>
