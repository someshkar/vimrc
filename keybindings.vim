" Set leader to comma
let mapleader=","

" jk is escape
inoremap jk <esc><Right>

" space to quickly switch window panes
nnoremap <Space> <C-w>

" clears highlights
nnoremap // :noh<return>

" allow moving lines up and down in v-line mode
vnoremap J :m '>+1 <cr> gv=gv
vnoremap K :m '<-2 <cr> gv=gv

" run code, useful for ctfs and cp
augroup compileandrun
  autocmd!
  autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
  " autocmd filetype python nnoremap <f5> :w <bar> :vnew <bar> :!python3 % <cr>
  autocmd filetype cpp nnoremap <f5> :w <bar> !g++ % <cr> :vnew <bar> :te exec "./a.out" <cr><cr>
  autocmd filetype cpp nnoremap <f6> :vnew <bar> :te exec "./a.out" <cr>
  autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
  autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END
