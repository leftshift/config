set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'valloric/youcompleteme'
Plugin 'leafgarland/typescript-vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tidalcycles/vim-tidal'

call vundle#end()
filetype plugin indent on

" solarized setup
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

" make ultisnips work
let g:UltiSnipsExpandTrigger="<c-j>"

" enable mouse input
set mouse=a

" highlight search matches
set hlsearch

" show line numbers
set number
set expandtab
set tabstop=4
set shiftwidth=4

" when writing a backup, copy the old file instead of moving it
set backupcopy=yes

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 cursorcolumn
