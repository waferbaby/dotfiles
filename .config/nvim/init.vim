let loaded_netrwPlugin = 1

set encoding=utf8
set shiftwidth=2
set tabstop=2
set shell=/bin/bash

set autochdir
set autoread
set autowriteall
set expandtab
set ignorecase
set noshowmode
set number
set smartcase

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitmate'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
