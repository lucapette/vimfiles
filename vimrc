" Don't try to be crappy compatible with Vi
set nocompatible

filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
  !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'junegunn/goyo.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kien/ctrlp.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'reedes/vim-pencil'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/matchit.zip'

call vundle#end()

" Indentation.
filetype plugin indent on

" Enable syntax highlighter.
syntax on

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
