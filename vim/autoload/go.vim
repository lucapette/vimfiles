if exists("g:loaded_go_utils")
  finish
endif

let g:loaded_go_utils = 1

func go#Run()
  call utils#RunCommand('go run *.go')
endfunc

func go#TestFile()
  call utils#RunCommand('go test '.expand('%').' '.expand('%:r').'_test.go')
endfunc

" vim:set et sw=2:
