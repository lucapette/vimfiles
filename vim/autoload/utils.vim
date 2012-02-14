" Trimspaces without messing with the search register.
function! utils#trimspaces()
  let oldsearch = @/
  let oldhlsearch = &hlsearch
  %s/\s\+$//e
  let @/ = oldsearch
  let &hlsearch = oldhlsearch
endfunction
