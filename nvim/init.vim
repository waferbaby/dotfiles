let g:ackhighlight = 1
let g:ackprg = 'rg --vimgrep --no-heading'
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'] }
let g:bufferline_echo = 0
let g:fzf_layout = { 'down': '~20%' }

let loaded_netrwPlugin = 1

set autoread
set autowriteall
set expandtab
set exrc
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

hi Error cterm=bold ctermfg=255 ctermbg=9
hi IncSearch cterm=underline ctermfg=255 ctermbg=238
hi LineNr ctermfg=242
hi MatchParen cterm=underline ctermfg=255 ctermbg=238
hi Search cterm=underline ctermfg=255 ctermbg=238
hi SpellBad cterm=bold ctermfg=255 ctermbg=9
hi SpellCap cterm=bold ctermfg=255 ctermbg=56
hi StatusLine ctermfg=232 ctermbg=255
hi StatusLineNC cterm=none ctermfg=242 ctermbg=232
hi User1 ctermfg=249
hi User2 ctermfg=243

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

autocmd VimEnter * call SetStatusline()
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
  autocmd BufWriteCmd ~/Development/usesthis/posts/*.markdown w | silent! exec '!~/Development/usesthis/tasks/link_gear %:p' | silent! %s/[‘’]/'/g | silent! %s/[“”]/"/g | e
augroup end

augroup nolines
  autocmd!
  autocmd BufNew,BufNewFile,BufRead *.txt,*.md,*.markdown :set nonu
augroup END

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ajh17/VimCompletesMe'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf'
Plug 'leshill/vim-json'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

call plug#end()

function! GitBranch()
  let branch = fugitive#head()
  if branch != ''
    return branch
  else
    return ''
endfunction

function SetStatusline()
  let &statusline='%{bufferline#refresh_status()}'.bufferline#get_status_string()

  set statusline+=%=
  set statusline+=%#User1#
  set statusline+=%{GitBranch()}
  set statusline+=%#User2#
  set statusline+=\ 
  set statusline+=(%l/%L)\ %P
endfunction
