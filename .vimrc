set number
set expandtab
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set t_Co=256
syntax on


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'croaker/mustang-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'moll/vim-node'
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()
filetype plugin indent on

colorscheme mustang

let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1

let mapleader = "s"
