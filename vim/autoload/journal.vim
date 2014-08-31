if exists("g:loaded_journal")
  finish
endif

let g:loaded_journal = 1

func! journal#AddHeader()
  exe "normal! i\<c-r>=system('date +%Y-%m-%d')\<cr>"
  normal! kyypVr=
endfunc

func! journal#NewEntry()
  exe "normal! Go\<cr>"
endfunc
