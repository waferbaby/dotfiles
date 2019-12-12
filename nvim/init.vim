let g:ackhighlight = 1
let g:ackprg = 'rg --vimgrep --no-heading'
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'] }
let g:bufferline_echo = 0
let g:bufferline_fname_mod = ':p:.'
let g:bufferline_pathshorten = 1
let g:bufferline_show_bufnr = 0
let g:fzf_layout = { 'down': '~50%' }
let g:gutentags_ctags_tagfile = '.tags'

let loaded_netrwPlugin = 1

set autoread
set autowriteall
set clipboard=unnamed
set encoding=utf8
set expandtab
set exrc
set ignorecase
set incsearch
set laststatus=2
set nofoldenable
set nohlsearch
set number
set secure
set shell=/bin/bash
set shiftwidth=2
set shortmess+=I
set smartcase
set smarttab
set softtabstop=2
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
hi User1 ctermfg=250 ctermbg=232
hi User2 ctermfg=4 ctermbg=232
hi User3 ctermfg=243 ctermbg=232

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

augroup markdown
  autocmd!
  autocmd FileType markdown nnoremap <leader>l ciw[<C-r>"][]<Esc>i
  autocmd FileType markdown vnoremap <leader>l c[<C-r>"][]<Esc>i
  autocmd FileType markdown nnoremap <leader>L ciw[<C-r>"]()<Esc>i
  autocmd FileType markdown vnoremap <leader>L c[<C-r>"]()<Esc>i
augroup end

augroup nolines
  autocmd!
  autocmd BufNew,BufNewFile,BufRead *.txt,*.md,*.markdown :set nonu
augroup END

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'jdonaldson/vaxe'
Plug 'junegunn/fzf'
Plug 'leshill/vim-json'
Plug 'ludovicchabant/vim-gutentags'
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

function! GutentagsStatus()
  let status = gutentags#statusline('[', ']')
  if status != ''
    return status . ' '
  else
    return ''
endfunction

if !exists('*SetStatusline')
  function SetStatusline()
    let &statusline='%{bufferline#refresh_status()}'.bufferline#get_status_string()

    set statusline+=%=
    set statusline+=%{GutentagsStatus()}
    set statusline+=%#User1#
    set statusline+=%{GitBranch()}
    set statusline+=%#User2#
    set statusline+=\ %y\ 
    set statusline+=%#User3#
    set statusline+=(%l/%L)\ %P
  endfunction
endif
