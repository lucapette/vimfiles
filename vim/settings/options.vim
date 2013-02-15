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

" Use mac os clipobard
set clipboard=unnamed

" Highlight the line where the cursor is. Surprisingly useful.
set cursorline

" Use a popup to show the completion and matches the longest match first.
set completeopt=longest,menuone

" Use the default unix dictionary.
set dictionary=/usr/share/dict/words

" Put in /tmp the swap files.
set directory=/tmp

" I want to choose what to fold
set foldmethod=manual

" Use spaces for crappy tabs.
set expandtab

" when substitute enable g flag by default. Very handy.
set gdefault

" Yes, long history please.
set history=1000

" Best. Option. Ever.
set hidden

" Highlight search.
set hlsearch

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

" Do not show mode
set noshowmode

" Show as small as possible width for numbers.
set numberwidth=1

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

" Fast escape
set ttimeoutlen=10

" My terminal has a lot of colors.
set t_Co=256

" Give me a nice completion on the command line.
set wildmenu

" Don't ever show me the following
set wildignore=*~,.git,tmp,_site,*.log,*.jpg,*.png,*.gif

" Add more line for saved registers
set viminfo='100,<500,s10,h

" Use the ',' for <Leader> mappings.
let mapleader = ","
