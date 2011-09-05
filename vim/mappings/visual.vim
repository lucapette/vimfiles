"Do not lost block selection after indentation. Such a good thing!
vmap > >gv
vmap < <gv

" Make selecting inside an HTML tag less dumb. Thanks to @stevelosh.
nnoremap Vit vitVkoj
nnoremap Vat vatV

" zencoding mapping
vmap <c-e> <c-y>,

" visual search with ack
vnoremap <leader>a y:Ack <c-r>=expand(@")<CR><CR>

" textile linkify
vmap <leader>l S"f"a:
