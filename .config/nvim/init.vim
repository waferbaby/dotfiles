call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitmate'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'FZF' argv()[0] | endif
