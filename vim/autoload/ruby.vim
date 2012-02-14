" Go to the next/previous (based on direction parameter) Ruby method
" definition.
function! ruby#goto(direction)
  let command = {}
  let command.f = {"m": "normal ]m", "n": "normal! \<c-f>"}
  let command.b = {"m": "normal [m", "n": "normal! \<c-b>"}
  exe command[a:direction]["m"]
  if synIDattr(synID(line("."), col("."), 1), "name") != "rubyDefine"
    exe command[a:direction]["n"]
  endif
endfunction
