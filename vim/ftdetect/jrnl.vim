autocmd BufNewFile *.jrnl call journal#AddHeader()
autocmd BufRead,BufNewFile *.jrnl setfiletype journal
autocmd BufRead,BufNewFile *.jrnl set syntax=markdown
autocmd BufRead,BufNewFile *.jrnl Goyo
autocmd BufRead,BufNewFile *.jrnl call journal#NewEntry()
