syntax enable

let g:ack_autoclose = 1
let g:ackhighlight = 1
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:airline_theme = 'monochrome'

let g:NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowBookmarks = 1

let g:netrw_banner = 0
let g:netrw_keepdir = 0
let g:netrw_liststyle = 3
let g:netrw_sort_options = 'i'

hi LineNr ctermfg=242 

set encoding=utf8
set shiftwidth=2
set tabstop=2
set shell=/bin/bash

set expandtab
set ignorecase
set smartcase
set number

map <M-f> :Ack
map <M-p> :FZF<CR>
map <M-Space> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'
Plug 'SidOfc/mkdx'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
