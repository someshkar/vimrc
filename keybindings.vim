" Set leader to comma
let mapleader=","

" jk is escape
inoremap jk <esc><Right>

" clears highlights
nnoremap // :noh<return>

" run code, useful for ctfs and cp
augroup compileandrun
  autocmd!
  autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
  autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te exec "./a.out" <cr><cr>
  autocmd filetype cpp nnoremap <f6> :vnew <bar> :te exec "./a.out" <cr>
  autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
  autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END
