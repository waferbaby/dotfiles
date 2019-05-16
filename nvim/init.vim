let g:ackhighlight = 1
let g:ackprg = 'rg --vimgrep --no-heading'
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'] }
let g:buftabs_active_highlight_group = 'StatusLine'
let g:buftabs_inactive_highlight_group = 'StatusLineNC'
let g:buftabs_in_statusline = 1
let g:buftabs_only_basename = 1
let g:fzf_layout = { 'down': '~60%' }

let loaded_netrwPlugin = 1

set autoread
set autowriteall
set expandtab
set ignorecase
set incsearch
set nofoldenable
set nohlsearch
set number
set smartcase
set smarttab

set clipboard=unnamed
set cole=0
set encoding=utf8
set laststatus=2
set shell=/bin/bash
set shiftwidth=2
set shortmess+=I
set tabstop=2

set statusline+=%=%{FugitiveStatusline()}\ %y\ (%l/%L)\ %P

hi Error cterm=bold ctermfg=255 ctermbg=9
hi IncSearch cterm=underline ctermfg=255 ctermbg=238
hi LineNr ctermfg=242
hi MatchParen cterm=underline ctermfg=255 ctermbg=238
hi Search cterm=underline ctermfg=255 ctermbg=238
hi SpellBad cterm=bold ctermfg=255 ctermbg=9
hi SpellCap cterm=bold ctermfg=255 ctermbg=56
hi StatusLine ctermfg=232 ctermbg=255
hi StatusLineNC cterm=bold ctermfg=245

nnoremap <space> <nop>
map <space> <leader>

noremap <leader>c :TComment<CR>

nnoremap <leader>/ :%!sort -R<CR>
nnoremap <leader><Down> <C-W>j
nnoremap <leader><Up> <C-W>k
nnoremap <leader><Left> <C-W>h
nnoremap <leader><Right> <C-W>l
nnoremap <leader>[ :bp<CR>
nnoremap <leader>] :bn<CR>
nnoremap <leader>f :Ack<Space>
nnoremap <leader>j vipJ
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>t :FZF<CR>
nnoremap <leader>v :edit $MYVIMRC<CR>

autocmd VimEnter * silent! cd %:p:h
autocmd FileType crontab setlocal nobackup nowritebackup
autocmd BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

augroup fzf 
  autocmd!
  autocmd FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup end

augroup markdown
  autocmd!
  autocmd FileType markdown nnoremap <leader>l ciw[<C-r>"][]<Esc>i
  autocmd FileType markdown vnoremap <leader>l c[<C-r>"][]<Esc>i
  autocmd FileType markdown nnoremap <leader>L ciw[<C-r>"]()<Esc>i
  autocmd FileType markdown vnoremap <leader>L c[<C-r>"]()<Esc>i
augroup end

augroup usesthis
  autocmd!
  autocmd BufWriteCmd *.markdown w | silent! exec '!~/Development/usesthis/tasks/link_gear %:p' | silent! %s/’/'/g | silent! %s/[“”]/"/g | e
augroup end

augroup nolines
  autocmd!
  autocmd BufNew,BufNewFile,BufRead *.txt,*.md,*.markdown :set nonu
augroup END

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'leshill/vim-json'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/buftabs'
Plug 'w0rp/ale'

call plug#end()
