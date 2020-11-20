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
set shortmess=atI

" No BS
set noswapfile
set nobackup
set nowritebackup

" Set leader to comma
let mapleader=","

" Move vertically over 'fake' lines while also letting '10k' and '10j' work
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

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
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'

" Git integration so good, it should be illegal
Plug 'tpope/vim-fugitive'

" For distraction free writing
Plug 'junegunn/goyo.vim'

" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" Plug 'dylanaraps/wal.vim'
Plug 'airblade/vim-gitgutter'

" Better Go support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Prisma 2 support
Plug 'pantharshit00/vim-prisma'

" Carbon
Plug 'kristijanhusak/vim-carbon-now-sh'

" Wakatime
Plug 'wakatime/vim-wakatime'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }

" surround.vim
Plug 'tpope/vim-surround'

" Work better with tmux
Plug 'christoomey/vim-tmux-navigator'

" GitHub flavoured markdown
Plug 'rhysd/vim-gfm-syntax'

call plug#end()

" Go one character beyond the end of a line
set virtualedit+=onemore

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
source ~/.config/nvim/keybindings.vim " my keybindings put in one place
source ~/.config/nvim/functions.vim " helper functions

source ~/.config/nvim/coc.vim " configuration for coc.nvim

if (IsWSL())
  source ~/.config/nvim/wsl.vim " only for when I use WSL2
endif
