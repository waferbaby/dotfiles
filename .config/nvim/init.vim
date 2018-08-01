let loaded_netrwPlugin = 1

set clipboard=unnamed
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

hi LineNr ctermfg=242
hi StatusLine cterm=bold
hi StatusLineNC cterm=bold ctermfg=245

nnoremap <M-f> :Ack<Space>
nnoremap <M-p> :FZF<CR>
nnoremap <M-[> :bp<CR>
nnoremap <M-]> :bn<CR>
nnoremap <M-/> :%!sort -R<CR>

augroup fzf 
  autocmd!
  autocmd FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup end

augroup pencil
  autocmd!
  autocmd FileType markdown,md call pencil#init()
  autocmd FileType text        call pencil#init()
augroup end 

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
