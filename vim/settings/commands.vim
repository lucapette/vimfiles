" Google search from the command line
" Use open instead of xdg-open on OSX
command! -narg=1 GoogleSearch :silent exe '!xdg-open https://google.com/search?q='.<q-args>.'&'

" Convert Ruby 1.8 hash syntax to Ruby 1.9 syntax
" based on https://github.com/henrik/dotfiles/blob/master/vim/config/commands.vim#L20
command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')
