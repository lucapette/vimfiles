" Go to the next/previous (based on direction parameter) Ruby method
" definition.
function! ruby#goto(direction)
  let command = {}
  let command.f = {"m": "normal ]m", "n": "normal! \<c-f>"}
  let command.b = {"m": "normal [m", "n": "normal! \<c-b>"}
  let current_position = line(".")
  exe command[a:direction]["m"]
  if synIDattr(synID(line("."), col("."), 1), "name") != "rubyDefine" || current_position == line(".")
    exe command[a:direction]["n"]
  endif
endfunction

" Toggle focus: true on RSpec blocks.
" Based on https://github.com/henrik/dotfiles/blob/master/vim/shorts/focus_toggle.vim
function! ruby#toggleFocus()
  try
    s/\v[, ]\s*:focus\s*( do| \{|,)/\1/
  catch /E486:/  " Pattern not found
    silent! s/\v( do\s*$| \{)/, :focus\1/
  endtry
endfunction

function! ruby#checkSyntax()
  update

  let output = system('ruby -c '.expand('%'))

  " Reuse or create new buffer. Based on code in Decho
  " http://www.vim.org/scripts/script.php?script_id=120
  if exists('t:crsnr') && bufwinnr(t:crsnr) > 0
    exec 'keepjumps' bufwinnr(t:crsnr) 'wincmd W'
    exec 'normal ggdG'
  else
    exec 'keepjumps silent! below new'
    exec 'resize 10'
    let t:crsnr=bufnr('%')
  end

  put=output

  normal ggdd

  " Close on q.
  map <buffer> q ZZ

  " Make it a scratch (temporary) buffer.
  setlocal buftype=nofile bufhidden=wipe noswapfile
endfunction
