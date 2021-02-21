call plug#begin('~/.vim/plugged')
Plug 'justmao945/vim-clang'
Plug 'preservim/nerdtree'
"airline
Plug 'vim-airline/vim-airline'
"colorschemes
Plug 'morhetz/gruvbox'
call plug#end()



set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
syntax on
set foldcolumn=2

colorscheme gruvbox
set background=dark

"Привязки
let mapleader = ","
inoremap <C-v> <ESC>"+p
vnoremap <C-c> "+y
vnoremap <C-d> "+d
nmap <C-m> :NERDTreeToggle<CR>
set mouse=a
set encoding=utf8
