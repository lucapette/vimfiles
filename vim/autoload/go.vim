if exists("g:loaded_go_utils")
  finish
endif

let g:loaded_go_utils = 1

func go#Run()
  call utils#RunCommand('go run '.expand('%'))
endfunc

" vim:set et sw=2:
