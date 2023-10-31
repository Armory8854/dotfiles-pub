call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'vim-pandoc/vim-markdownfootnotes'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set ignorecase
set wildmenu
set wildmode=list:longest
set wildignore=*.jpg,*.png,*.docx,*.csv,*.pdf
set backspace=2
