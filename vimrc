" Don't try to be crappy compatible with Vi. It's 2013.
set nocompatible

" pathogen.vim is so awesome you can even bundle it.
runtime bundle/pathogen/autoload/pathogen.vim

" If you don't know what pathogen.vim is
" then you definitely need to check it out.
call pathogen#infect()
call pathogen#helptags()

" Enable syntax highlighter.
syntax on

" Indentation.
filetype plugin indent on

" And plugins too.
filetype plugin plugin on

" Load my personal settings.
runtime settings/autocommands.vim
runtime settings/commands.vim
runtime settings/options.vim
runtime settings/plugins.vim

" And my personal mappings.
runtime mappings/command.vim
runtime mappings/ctrl.vim
runtime mappings/keys.vim
runtime mappings/leader.vim
runtime mappings/normal.vim
runtime mappings/visual.vim

" Load colorscheme
set background=dark
colorscheme solarized
