
set nocompatible
set textwidth=80
set backspace=indent,eol,start

set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set hlsearch

set matchpairs+=<:>
"let loaded_matchparen=1

"moving through open windows
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
map <C-h> <C-W>h<C-W>_
map <C-m> <C-W>l<C-W>_

call plug#begin('~/.vim/plugged')
Plug 'hzchirs/vim-material'
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'
call plug#end()

syntax on
set termguicolors
set background=dark
colorscheme vim-material

set mouse=a
set foldcolumn=0

set wildmenu
"set wildmode=list:longest,full

set cot=menu
set cpt=.,w,b,u,t

set cursorline
hi CursorLine cterm=none

