" Let me decide what goes in the status line.
set statusline=%{exists('g:loaded_fugitive')?fugitive#statusline():''}                " git branch from fugitive.vim

" Current buffer:
set statusline+=\ [%F]                                                                " Full path filename
set statusline+=%y                                                                    " Extension downcase
set statusline+=%m                                                                    " Modified flag
set statusline+=%r                                                                    " Readlonly flag

set statusline+=%{&spell?'[spell]':''}                                                " Add '[spell]' if spell option is on

set statusline+=%=                                                                    " All that follow is right aligned

set statusline+=\ [%l]                                                                " Cursor line number
set statusline+=\ [%c]                                                                " Cursor column number
set statusline+=\ [%p%%]                                                              " Percentage through file in lines
set statusline+=\ [%L]                                                                " Number of lines of the current buffer
set statusline+=\ [%{&ff}]                                                            " File Format of the current buffer
