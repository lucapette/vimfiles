set nocompatible

filetype off

if !filereadable(expand("~/.vim/autoload/plug.vim"))
  !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Einenlum/yaml-revealer'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'benmills/vimux'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/matchit.zip'

call plug#end()

" Indentation
filetype plugin indent on

" Enable syntax highlighter
syntax on

" And plugins too
filetype plugin plugin on

" Load my personal settings
runtime settings/autocommands.vim
runtime settings/commands.vim
runtime settings/options.vim
runtime settings/plugins.vim

" And my personal mappings
runtime mappings/command.vim
runtime mappings/ctrl.vim
runtime mappings/keys.vim
runtime mappings/leader.vim
runtime mappings/normal.vim
runtime mappings/visual.vim

" Load colorscheme
if &background ==# 'dark'
   colorscheme nord
else
   colorscheme solarized
endif
