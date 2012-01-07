runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#helptags()
set nocompatible

set autochdir
set autoindent
set autoread
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
set guifont=Monospace\ 11
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
set wildignore=*~,.git,tmp,_site,*.log,*.jpg,*.png,*.gif
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
set statusline+=\ [%c]
set statusline+=\ [%p%%]
set statusline+=\ [%L]
set statusline+=\ [%{&ff}]

let mapleader = ","

syntax on

filetype plugin indent on

filetype plugin plugin on

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" source mappings
exe join(map(split(glob("~/.vim/mappings/*.vim"), "\n"), '"source " . v:val'), "\n")

" NERDTree
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeQuitOnOpen = 1

" zencoding
let g:user_zen_settings = { 'indentation' : '  '}

" command-t
let g:CommandTMatchWindowAtTop = 1
let g:CommandTSelectPrevMap = "<C-p>"
let g:CommandTAcceptSelectionVSplitMap = "<C-k>"

" RubyComplete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" CoffeeScript
let coffee_compile_vert = 1

" Surround
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"

" highlight rspec keywords properly https://gist.github.com/64635
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" rails-tags
autocmd User Rails call setbufvar('%','&tags',&tags.', '.RailsRoot().'/.git/rails-tags')

" colorscheme
colorscheme molokai
hi Comment guifg=SkyBlue
hi Visual term=reverse cterm=reverse gui=reverse guifg=#66D9EF guibg=#000000
