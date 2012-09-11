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
    if has('balloon_eval')
      set noballooneval
      set balloonexpr=
    endif
    set nospell
  else
    if has('balloon_eval')
      set ballooneval
      set balloonexpr=utils#spellBalloon()
    endif
    set spell
  endif
endfunction
