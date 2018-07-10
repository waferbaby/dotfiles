filetype plugin indent on

syntax enable

set encoding=utf8
set shiftwidth=2
set tabstop=2
set shell=/bin/bash

set nocompatible
set expandtab
set nowrap
set hlsearch
set incsearch
set ignorecase
set smartcase

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'SidOfc/mkdx'
Plug 'tpope/vim-fugitive'

call plug#end()
