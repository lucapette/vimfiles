if exists("g:loaded_utils")
  finish
endif

let g:loaded_utils = 1

" Trimspaces without messing with the search register.
func! utils#trimspaces()
  let oldsearch = @/
  let oldhlsearch = &hlsearch
  %s/\s\+$//e
  let @/ = oldsearch
  let &hlsearch = oldhlsearch
endfunc

" From http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html
func! utils#VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
  let @s = temp
endfunc

" zenmode
func! utils#zenmode()
  Goyo
  PencilToggle
  if exists('g:zenmode') && g:zenmode == 'on'
    set background=dark
    set nospell
    colorscheme solarized
    let g:zenmode = 'off'
  else
    set background=light
    set spell
    colorscheme pencil
    let g:zenmode = 'on'
  endif
endfunc

" vim:set et sw=2:
