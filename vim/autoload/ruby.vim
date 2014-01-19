func! ruby#checkSyntax()
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
endfunc

func! ruby#PromoteToLet()
  exec 'normal! dd'
  exec 'normal! P'
  :.s/@\=\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfun
