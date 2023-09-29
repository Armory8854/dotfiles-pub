call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
call plug#end()

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set ignorecase
set wildmenu
set wildmode=list:longest
set wildignore=*.jpg, *.png, *.docx, *.csv, *.pdf
