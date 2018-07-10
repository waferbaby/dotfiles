syntax enable

let g:airline_theme = 'monochrome'

set encoding=utf8
set shiftwidth=2
set tabstop=2
set shell=/bin/bash

set expandtab
set nowrap
set ignorecase
set smartcase

map <M-p> :FZF<CR>

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'SidOfc/mkdx'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

