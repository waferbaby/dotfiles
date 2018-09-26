let g:ack_autoclose = 1
let g:ackhighlight = 1
let g:ackprg = 'rg --vimgrep --no-heading'
let g:notes_conceal_bold = 0
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_url = 0
let g:notes_directories = ['~/Documents/Notes']
let g:notes_smart_quotes = 0
let g:notes_suffix = '.txt'

let loaded_netrwPlugin = 1

nnoremap <space> <nop>
map <space> <leader>

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

nnoremap <leader>f :Ack<Space>
nnoremap <leader>j vipJ
nnoremap <leader>p :FZF<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <leader>] :bn<CR>
nnoremap <leader>/ :%!sort -R<CR>

autocmd VimEnter * silent! lcd $PWD

augroup fzf 
  autocmd!
  autocmd FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup end

augroup usesthis
  autocmd!
  autocmd BufWriteCmd *.markdown w | silent! exec '!~/Development/usesthis/tasks/link_gear %:p' | silent! %s/’/'/g | silent! %s/[“”]/"/g | e
augroup end

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

call plug#end()
