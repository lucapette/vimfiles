cmap w!! w !sudo tee % >/dev/null

if has('gui_running')
    " Make shift-insert work like in Xterm
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>
endif

" sane regex
nnoremap / /\v
vnoremap / /\v

"Do not lost block selection after indentation. Such a good thing!
vmap > >gv
vmap < <gv

" Make selecting inside an HTML tag less dumb. Thanks to @stevelosh.
nnoremap Vit vitVkoj
nnoremap Vat vatV

" Zen time
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" search and move
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

source ~/.vim/mappings/ctrl.vim
source ~/.vim/mappings/function-keys.vim
source ~/.vim/mappings/leader.vim
