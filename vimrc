call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set autochdir
set autoindent
set autowrite
set backspace=indent,eol,start
set backup
set backupdir=/tmp
set completeopt=longest,menuone
set dictionary=/usr/share/dict/words
set directory=/tmp
set expandtab
set gdefault
set grepprg=ack
set guioptions-=A
set guioptions-=T
set guioptions-=m
set guioptions-=r
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set magic
set matchtime=4
set mouse=a
set nocompatible
set nofoldenable
set numberwidth=1
set pastetoggle=<F12>
set relativenumber
set ruler
set shell=/bin/bash\ -i
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set spelllang=en_gb
set splitright
set tabstop=4
set textwidth=78
set wildignore=*.bak,*.o,*.e,*~
set wildmenu

function! RvmStatusLine()
    let prompt=system("~/.rvm/bin/rvm-prompt v g")
    return substitute(prompt, '\n', '', 'g')
endfunction

" more informative status line
set statusline=%F
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
set statusline+=%{RvmStatusLine()}
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=\ [%{&ff}]
set statusline+=\ [%Y]
set statusline+=%=
set statusline+=\ [%l]
set statusline+=\ [%L]

let mapleader = ","

syntax on

filetype plugin indent on

filetype plugin plugin on

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

autocmd FocusLost * :wa

source ~/.vim/mappings/mappings.vim

" textile plugin
let g:TextileOS="Linux"
let g:TextileBrowser="/opt/google/chrome/chrome"

"NERDTree plugin config
let g:NERDTreeHijackNetrw = 1

"codepath.vim config
let g:codepath_add_to_tags = 1
let g:codepath_add_to_path = 1

" snipmate config
let g:snippets_dir = "$HOME/.vim/snippets"

"FuzzyFinderTextMate Config
autocmd User Rails let g:fuzzy_ignore = 'tmp/**/*,*.png,*.jpg'
let g:fuzzy_path_display = 'highlighted_path'

colorscheme desert
highlight Pmenu guibg=darkkhaki
