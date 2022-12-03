" === PLUGINS ===
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'
Plug 'jreybert/vimagit'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab', { 'branch': 'master' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'vim-python/python-syntax', { 'for': 'python' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'evanleck/vim-svelte', { 'for': 'svelte', 'branch': 'main' }
Plug 'elzr/vim-json', { 'for': 'json' }

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NerdTreeToggle' }
call plug#end()

" === THEMING ===
set termguicolors

let g:gruvbox_contrast_dark = 'medium'

colorscheme gruvbox

" === OPTIONS ===
syntax on
syntax enable
set ruler
set number

filetype plugin on

set wildmenu

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

set backspace=indent,eol,start

set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set hlsearch
set incsearch
set ignorecase
set smartcase
set fileformats=unix,dos,mac

set noerrorbells
set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set mouse=a

let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"

" === AIRLINE ===
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1

" === NERDTREE ===

" turn on to have it auto open on vim startup
" autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" === KEYMAPS ==
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
imap <C-v> <esc>
imap <C-z> <esc>

nnoremap <S-up> <C-w><up>
nnoremap <S-down> <C-w><down>
nnoremap <S-left> <C-w><left>
nnoremap <S-right> <C-w><right>

noremap <S-Tab> :bprevious<CR>
nnoremap <S-T> :bo term<CR>

nnoremap <C-b> :NERDTreeToggle <CR>
inoremap <C-b> <esc> :NERDTreeToggle <CR>
