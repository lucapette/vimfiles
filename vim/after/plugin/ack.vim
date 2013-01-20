" Search with Ack.vim from the current
" project dir. See my fork of Ack.vim
" at https://github.com/lucapette/ack.vim.
let g:ackdefaultdir = rootfinder#current()

let g:ackprg = 'ack --nogroup --nocolor --column'
