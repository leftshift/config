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

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" solarized setup
let g:solarized_termtrans=1
syntax enable
set background=dark
colorscheme solarized

" make ultisnips work
let g:UltiSnipsExpandTrigger="<c-j>"

" airline tabline integration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

nmap <leader>t :bnext<CR>
nmap <leader>T :bprevious<CR>

" allow modified buffers to move to background
set hidden

" enable mouse input
set mouse=a
set ttymouse=sgr

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
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 cursorcolumn
