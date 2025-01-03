" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
" Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'vim-pandoc/vim-markdownfootnotes'
Plug 'LnL7/vim-nix'
Plug 'img-paste-devs/img-paste.vim'
Plug 'elzr/vim-json'
Plug 'lervag/wiki.vim'
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

" Gen settings
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
set clipboard=unnamedplus

augroup filetype_docs
	autocmd!
	autocmd FileType markdown setlocal spell
augroup END

" img-paste stuff
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

" Custom Keymaps
"" Date = C-z
:nnoremap <F5> "=strftime("%F")<CR>
:inoremap <F5> <C-R>=strftime("%F")<CR>

" wiki.vim settings
"" wiki root
let g:wiki_root = '~/wiki'
