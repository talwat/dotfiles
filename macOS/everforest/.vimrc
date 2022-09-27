syntax on

packadd! everforest
syntax enable
colorscheme everforest

hi Normal guibg=NONE ctermbg=NONE
set t_ut=
set termguicolors
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set mouse=a
set encoding=UTF-8

let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='everforest'
let g:airline#extensions#branch#enabled=1

" autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

vmap <C-c> "+yi
vmap <C-x> "+c
imap <C-v> <esc>"+p
imap <C-z> <esc>"+pa

nnoremap <C-b> :NERDTreeToggle <CR>
inoremap <C-b> <esc> :NERDTreeToggle <CR>

filetype plugin on

if &term == "alacritty"        
  let &term = "xterm-256color"
endif

call plug#begin('~/.vim/plugged')

" Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
" Plug 'https://github.com/ternjs/tern_for_vim.git'

call plug#end()
