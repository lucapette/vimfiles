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

" Toggle focus: true on RSpec blocks.
" Based on https://github.com/henrik/dotfiles/blob/master/vim/shorts/focus_toggle.vim
function! ruby#toggleFocus()
  try
    s/\v[, ]\s*focus: true\s*( do| \{|,)/\1/
  catch /E486:/  " Pattern not found
    silent! s/\v( do\s*$| \{)/, focus: true\1/
  endtry
endfunction
