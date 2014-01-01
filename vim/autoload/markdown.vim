" Create a markdown header based on the level parameter (1..6)
function! markdown#headerify(level)
  if a:level == 1
    normal! yypVr=
  elseif a:level == 2
    normal! yypVr-
  else
    execute "normal! ^i".repeat('#',a:level)." "
  endif
endfunction
