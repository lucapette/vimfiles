" pathogen.vim is so awesome you can even bundle it.
runtime bundle/pathogen/autoload/pathogen.vim

" If you don't know what pathogen.vim is then you really need to check it out.
call pathogen#infect()
call pathogen#helptags()

" Don't try to be crappy compatible with Vi. It's 2012.
set nocompatible

" Change the the working directory accordingly to the current buffer.
set autochdir

" Try to indent new lines.
set autoindent

" Look for external writings to the current buffer.
set autoread

" Write the current buffer automatically on some actions
set autowrite

" Make backspace normal for programmers
set backspace=indent,eol,start

" Backup files in the /tmp dir
set backup
set backupdir=/tmp

" Use a popup to show the completion and matches the longest match first.
set completeopt=longest,menuone

" Use the default unix dictionary.
set dictionary=/usr/share/dict/words

" Put in /tmp the swap files.
set directory=/tmp

" Use spaces for crappy tabs.
set expandtab

" when substitute enable g flag by default. Very handy.
set gdefault

" Use ack always.
set grepprg=ack

" My font of choice.
set guifont=Monospace\ 11

" In short, don't show the menu in gVim
set guioptions-=A
set guioptions-=T
set guioptions-=m
set guioptions-=r

" Yes, long history please.
set history=1000

" Best. Option. Ever.
set hidden

" Highlight search.
set hlsearch

" Ignore the case while searching.
set ignorecase

" Show matched search while typing.
set incsearch

" Always show the stl, please.
set laststatus=2

" Be magic with patterns
set magic

" Show the mathcing paren for 4 tenth of seconds.
set matchtime=4

" Yes, enable mouse. Then don't use it.
set mouse=a

" I want to see the code.
set nofoldenable

" Show as small as possible width for numbers.
set numberwidth=1

" Paste option toggle mapping.
set pastetoggle=<F12>

" Use it. It's wonderful.
set relativenumber

" 2 space for indenting with >>.
set shiftwidth=2

" Show the last partial command
set showcmd

" Show me the matching paren.
set showmatch

" Be casesentive if I actually type Uppercase chars.
set smartcase

" I don't want to add the same words again.
set spellfile=$HOME/Dropbox/spell.utf8.add

" I like the Queen a lot.
set spelllang=en_gb

" Put new windows on the right.
set splitright

" A tab is four spaces for me.
set tabstop=4

" Universal width.
set textwidth=78

" Show me the title of the current file, plus some other useful information.
set title titlestring=%F\ %m%r%h%w

" Ignore this stuff while expand paths.
set wildignore=*~,.git,tmp,_site,*.log,*.jpg,*.png,*.gif

" Give me a nice completion on the command line.
set wildmenu

" Let me decide what goes in the status line.
set stl=%{exists('g:loaded_fugitive')?fugitive#statusline():''}                " git branch from fugitive.vim
set stl+=\ %{exists('g:loaded_rvm')?rvm#statusline():''}                       " rvm prompt from vim-rvm

                                                                               " Current buffer:
set stl+=\ [%F]                                                                " Full path filename
set stl+=%y                                                                    " Extension downcase
set stl+=%m                                                                    " Modified flag
set stl+=%r                                                                    " Readlonly flag

set stl+=%{&spell?'[spell]':''}                                                " Add '[spell]' if spell option is on

set stl+=%=                                                                    " All that follow is right aligned

set stl+=\ [%l]                                                                " Cursor line number
set stl+=\ [%c]                                                                " Cursor column number
set stl+=\ [%p%%]                                                              " Percentage through file in lines
set stl+=\ [%L]                                                                " Number of lines of the current buffer
set stl+=\ [%{&ff}]                                                            " File Format of the current buffer

" Use the ',' for <Leader> mappings.
let mapleader = ","

" Enable syntax highlighter.
syntax on

" Indentation.
filetype plugin indent on

" And plugins too.
filetype plugin plugin on

" Go to the last place I've been in the current buffer.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Load my personal mappings.
exe join(map(split(glob("~/.vim/mappings/*.vim"), "\n"), '"source " . v:val'), "\n")

" NERDTree
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeQuitOnOpen  = 1

" zencoding
let g:user_zen_settings = { 'indentation' : '  '}

" ultisnips
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories  = ["snippets"]
let g:UltiSnipsDoHash              = 0

" CtrlP
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode     = 2
let g:ctrlp_map                   = '<c-t>'

" RubyComplete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails          = 1

" CoffeeScript
let coffee_compile_vert = 1

" Surround
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"

" highlight rspec keywords properly https://gist.github.com/64635
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" Load colorscheme and fix it a bit.
colorscheme molokai
hi Comment guifg=SkyBlue
hi Visual term=reverse cterm=reverse gui=reverse guifg=#66D9EF guibg=#000000
