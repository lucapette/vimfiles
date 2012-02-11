" Paste content from clipboard.
nmap <S-Insert> "+p
inoremap <S-Insert> <esc>"+pi

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

" See https://github.com/kana/vim-smartword
nmap w  <Plug>(smartword-w)
nmap b  <Plug>(smartword-b)
nmap e  <Plug>(smartword-e)
nmap ge <Plug>(smartword-ge)
