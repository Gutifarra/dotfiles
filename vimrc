""""""""""""""""""""""""""""""""""""""""
" Custom vimrc for Windoze GVIM / Linux VIM
""""""""""""""""""""""""""""""""""""""""
"   1. Plugins
"   2. General
"   3. VIM UI
"   4. Themes
"   5. Text and Indenting

""""""""""""""""""""""""""""""""""""""""
"   1. Plugins
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'w0rp/ale'
call plug#end() 

let g:ale_completion_enabled = 1

" vim-airline
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""
"   2. General
""""""""""""""""""""""""""""""""""""""""
" Set how many lines of history VIM should remember
set history=2000

" Enable filetype-specific highlighting and indenting
filetype plugin indent on

" Set mapleader to ,
let mapleader = ","

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

""""""""""""""""""""""""""""""""""""""""
"   3. VIM UI
""""""""""""""""""""""""""""""""""""""""
" Enable wild menu
set wildmenu

" Always show current position on right bottom
set ruler

" Hide instead of close buffers when abandoning them
" Enables changing buffers without having to save
set hidden

" Show matching brackets when text indicator is over them
set showmatch 

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Search for pattern while typing
set incsearch

" Highlight search results
set hlsearch

" Set linenumbers
set number

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Always show the status line
"set laststatus=2

""""""""""""""""""""""""""""""""""""""""
"   4. Themes
""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set colorscheme
colorscheme gruvbox
set background=dark

" Set GVIM font
set guifont=Inconsolata\ for\ Powerline:h10

" Set utf8 as standard encoding 
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""
"   5. Text and Indenting
""""""""""""""""""""""""""""""""""""""""
" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Tab improvements
set smarttab

