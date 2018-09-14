let g:notes_conceal_bold = 0
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_url = 0
let g:notes_directories = ['~/Documents/Notes']
let g:notes_smart_quotes = 0
let g:notes_suffix = '.txt'
let loaded_netrwPlugin = 1

set clipboard=unnamed
set cole=0
set encoding=utf8
set shiftwidth=2
set tabstop=2
set shell=/bin/bash
set shortmess+=I

set autoread
set autowriteall
set expandtab
set ignorecase
set noshowmode
set nofoldenable
set number
set smartcase

hi Error cterm=bold ctermfg=255 ctermbg=9
hi IncSearch cterm=underline ctermfg=255 ctermbg=238
hi LineNr ctermfg=242
hi MatchParen cterm=underline ctermfg=255 ctermbg=238
hi Search cterm=underline ctermfg=255 ctermbg=238
hi SpellBad cterm=bold ctermfg=255 ctermbg=9
hi SpellCap cterm=bold ctermfg=255 ctermbg=56
hi StatusLine cterm=bold
hi StatusLineNC cterm=bold ctermfg=245

nnoremap <M-f> :Ack<Space>
nnoremap <M-j> vipJ
nnoremap <M-p> :FZF<CR>
nnoremap <M-[> :bp<CR>
nnoremap <M-]> :bn<CR>
nnoremap <M-/> :%!sort -R<CR>

autocmd VimEnter * silent! lcd %:p:h

augroup fzf 
  autocmd!
  autocmd FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup end

augroup pencil
  autocmd!
  autocmd FileType markdown,md call pencil#init()
augroup end 

augroup usesthis
  autocmd!
  autocmd BufWriteCmd *.markdown w | silent! exec '!~/Development/usesthis/tasks/link_gear %:p' | silent! %s/’/'/g | silent! %s/[“”]/"/g | e
augroup end

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitmate'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

call plug#end()
