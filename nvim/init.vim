let g:ale_fix_on_save = 1
let g:ale_fixers = { 'ruby': ['prettier'] }
let g:ale_linters = { 'ruby': ['rubocop'] }
let g:ale_linters_explicit = 1
let g:ale_ruby_rubocop_executable = 'bundle'
let g:bufferline_echo = 0
let g:bufferline_fname_mod = ':p:.'
let g:bufferline_show_bufnr = 0
let g:fzf_layout = { 'window': { 'width': 100, 'height': 20 } }
let g:rg_command = 'rg --vimgrep'
let g:rg_highlight = 1

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
hi Pmenu ctermfg=250 ctermbg=none
hi Search cterm=underline ctermfg=255 ctermbg=238
hi SpellBad cterm=bold ctermfg=255 ctermbg=9
hi SpellCap cterm=bold ctermfg=255 ctermbg=56
hi StatusLine cterm=bold ctermfg=7 ctermbg=none
hi StatusLineNC cterm=none ctermfg=250 ctermbg=none
hi TabLineFill cterm=none
hi Tabline ctermbg=none ctermfg=12
hi User1 ctermfg=255 ctermbg=none
hi User2 ctermfg=10 ctermbg=none
hi User3 ctermfg=243 ctermbg=none
hi VertSplit cterm=none ctermfg=237
hi! link SignColumn LineNr

nnoremap <space> <nop>
map <space> <leader>

noremap <leader>c :TComment<CR>
nnoremap <leader>/ :%!sort -R<CR>
nnoremap <leader><Down> <C-W>j
nnoremap <leader><Left> <C-W>h
nnoremap <leader><Right> <C-W>l
nnoremap <leader><Up> <C-W>k
nnoremap <leader>[ :bp<CR>
nnoremap <leader>] :bn<CR>
nnoremap <leader>f :Rg<Space>
nnoremap <leader>j vipJ
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>t :FZF<CR>
nnoremap <leader>v :edit $MYVIMRC<CR>

autocmd BufEnter * call SetStatusline()
autocmd VimEnter * silent! cd %:p:h

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tomtom/tcomment_vim'
Plug 'w0rp/ale'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()

if !exists('*SetStatusline') && has_key(g:plugs, 'vim-bufferline')
  function SetStatusline()
    let &statusline='%{bufferline#refresh_status()}'.bufferline#get_status_string()

    set statusline+=%=
    set statusline+=%{getcwd()}

    let g:branch = fugitive#Head()

    if g:branch != ""
      set statusline+=%#User1#
      set statusline+=\ (%{g:branch})
    endif

    set statusline+=%#User2#
    set statusline+=\ %y\ 
    set statusline+=%#User3#
    set statusline+=(%l/%L)\ %P
  endfunction
endif
