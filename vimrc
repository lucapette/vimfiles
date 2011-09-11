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
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set spelllang=en_gb
set splitright
set tabstop=4
set textwidth=78
set title titlestring=%F\ %m%r%h%w
set wildignore=*.bak,*.o,*.e,*~
set wildmenu

let g:rvmprompt_tokens = "v g"
" more informative status line
set statusline=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
set statusline+=\ %{exists('g:loaded_rvmprompt')?rvmprompt#statusline():''}
set statusline+=\ [%F]
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=\ [%Y]
set statusline+=%=
set statusline+=\ [%l]
set statusline+=\ [%L]
set statusline+=\ [%p%%]
set statusline+=\ [%{&ff}]

let mapleader = ","

syntax on

filetype plugin indent on

filetype plugin plugin on

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

source ~/.vim/mappings/mappings.vim

"NERDTree plugin config
let g:NERDTreeHijackNetrw = 1

" snipmate config
let g:snippets_dir = "$HOME/.vim/snippets"

" zencoding
let g:user_zen_settings = { 'indentation' : '  '}

"FuzzyFinderTextMate Config
autocmd User Rails let g:fuzzy_ignore = 'tmp/**/*,*.png,*.jpg'
let g:fuzzy_path_display = 'highlighted_path'

" RubyComplete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

colorscheme molokai
hi Comment guifg=SkyBlue
hi Visual term=reverse cterm=reverse gui=reverse guifg=#66D9EF guibg=#000000
