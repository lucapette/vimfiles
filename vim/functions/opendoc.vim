function! OpenDoc(type, keyword)
  let url = 'http://apidock.com/'.a:type.'/search/quick?query='.a:keyword
  exec ':silent !sensible-browser '.url.' &'
endfunction
