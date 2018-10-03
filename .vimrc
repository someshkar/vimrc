" make vim great again
set nocompatible

" don’t show the intro message when starting vim
set shortmess=atI

" start scrolling three lines before the horizontal window border
set scrolloff=3

" enable syntax highlighting
syntax enable

" almost no delays in switching modes
set timeoutlen=1000 ttimeoutlen=10

" set visual spaces in a tab
set tabstop=4

" set the number of spaces in a tab while editing
set softtabstop=4

" enable backups in /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" show line numbers
set number

" go one character beyond the end of a line
set virtualedit+=onemore

" better tab switching
map <leader>h :tabr<cr>
map <leader>l :tabl<cr>
map <leader>j :tabp<cr>
map <leader>k :tabn<cr>

" show the last used command in the bottom right
set showcmd

" enable language specific indents from indent files in ~/.vim/indent/
filetype indent on

" visual autocompleting for the command menu
set wildmenu

" highlight matching brackets [{()}]
set showmatch

" super search
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move vertically over 'fake' lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" \ is too far away to be the leader
let mapleader=","

" jk is escape
inoremap jk <esc>

" my plugin manager (vim-plug)
call plug#begin('~/.vim/plugged')

" focused text editing
Plug 'junegunn/goyo.vim' | Plug 'amix/vim-zenroom2'

" my current favourite color scheme
Plug 'arcticicestudio/nord-vim' 

" superior JavaScript highlighting for vim
Plug 'pangloss/vim-javascript' 

" TypeScript highlighting for vim
Plug 'leafgarland/typescript-vim' 

" awesome code screenshots
Plug 'kristijanhusak/vim-carbon-now-sh'

" a better status bar
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" recently opened files
Plug 'yegappan/mru'

" filesystem browser
Plug 'scrooloose/nerdtree'

" run shell commands inside vim
Plug 'vim-scripts/Conque-Shell'

" initialize plugin system
call plug#end()

" set dark mode in terminal, light in gvim or macvim
if has("gui_running")
	set background=light
else
	set background=dark
endif

" enable my latest favourite colorscheme
colorscheme nord

" show hidden files by default in nerdtree
let NERDTreeShowHidden=1

" enable zenroom2 with goyo
nnoremap <silent> <leader>z :Goyo<cr>
