" Trimspaces without messing with the search register.
function! utils#trimspaces()
  let oldsearch = @/
  let oldhlsearch = &hlsearch
  %s/\s\+$//e
  let @/ = oldsearch
  let &hlsearch = oldhlsearch
endfunction

" Show suggestions for the current misspelled-word
function! utils#spellBalloon()
  let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
  return join( lines, has( "balloon_multiline" ) ? "\n" : " " )
endfunction

" Toggle spell option
" Care about balloonexpr too.
function! utils#toggleSpell()
  if &spell
    set noballooneval
    set balloonexpr=
    set nospell
  else
    set ballooneval
    set balloonexpr=utils#spellBalloon()
    set spell
  endif
endfunction
