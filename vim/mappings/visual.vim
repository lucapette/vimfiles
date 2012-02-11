" Do not lost block selection after indentation. Such a good thing!
vmap > >gv
vmap < <gv

" Make selecting inside an HTML tag less dumb. Thanks to @stevelosh.
nnoremap Vit vitVkoj
nnoremap Vat vatV

" Trigger zencoding expansion.
vmap <c-e> <c-y>,

" Visual search with Ack.vim
vnoremap <leader>a y:Ack <c-r>=expand(@")<CR><CR>
