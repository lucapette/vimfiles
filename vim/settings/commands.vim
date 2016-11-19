" Convert Ruby 1.8 hash syntax to Ruby 1.9 syntax
" based on https://github.com/henrik/dotfiles/blob/master/vim/config/commands.vim#L20
command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" Remove all trailing spaces
command! TrimSpaces execute ':call utils#trimspaces()<bar>w'

" Zenmode
command! Zenmode execute ':call utils#zenmode()<bar>w'
