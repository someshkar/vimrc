" Set a few basics up
set encoding=UTF-8
set number
set title
set nocompatible
set showcmd
set relativenumber
set noshowmode
set updatetime=100
set timeoutlen=1000 ttimeoutlen=10
set scrolloff=3
set mouse=a
set shortmess=atI

" No BS
set noswapfile
set nobackup
set nowritebackup

" Set leader to comma
let mapleader=","

" Move vertically over 'fake' lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" Lightline
" Doesn't work if repositioned
" let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" For distraction free writing
Plug 'junegunn/goyo.vim'

" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'

" Plug 'dylanaraps/wal.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'

" Better Go support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Prisma 2 support
Plug 'pantharshit00/vim-prisma'

call plug#end()

" " NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" " let g:NERDTreeMinimalUI = 1
" let g:NERDTreeShowHidden = 1
" let g:NERDTreeDirArrowExpandable=""
" let g:NERDTreeDirArrowCollapsible=""

" jk is escape
inoremap jk <esc><Right>

" Go one character beyond the end of a line
set virtualedit+=onemore

" Make Nerdtree more usable
" nmap n :NERDTreeToggle<CR>

" Autotag
let g:closetag_filenames = '*.html,*.js,*.css'

" Syntax
syntax enable
filetype plugin on
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
set showmatch

" Theme and Color
set background=dark
set termguicolors
colorscheme deepspace

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cindent
set expandtab

" Search and Menu
set wildmenu
set incsearch
set hlsearch
set ignorecase

" Source other files
source ~/.config/nvim/coc.vim
