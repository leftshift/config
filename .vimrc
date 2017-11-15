set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

" solarized setup
syntax enable
set background=dark
colorscheme solarized

" enable mouse input
set mouse=a

" show line numbers
set number
set expandtab
set tabstop=4
set shiftwidth=4
