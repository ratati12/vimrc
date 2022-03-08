call plug#begin('~/.vim/plugged')
"airline
Plug 'vim-airline/vim-airline'
"colorschemes
Plug 'morhetz/gruvbox'
"autopairs
Plug 'jiangmiao/auto-pairs'
"YouCompleteMe
Plug 'ycm-core/YouCompleteMe'
Plug 'Shougo/deoplete.nvim'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
if has('win32') || has('win64')
    Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
else
    Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"
" HTML indentation
"

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "address,article,aside,audio,blockquote,canvas,dd,div,dl,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,hr,main,nav,noscript,ol,output,p,pre,section,table,tfoot,ul,video"
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
set mouse=a
set encoding=utf8
