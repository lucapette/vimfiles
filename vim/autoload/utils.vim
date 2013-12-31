" Trimspaces without messing with the search register.
function! utils#trimspaces()
  let oldsearch = @/
  let oldhlsearch = &hlsearch
  %s/\s\+$//e
  let @/ = oldsearch
  let &hlsearch = oldhlsearch
endfunction

" From http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html
function! utils#VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
