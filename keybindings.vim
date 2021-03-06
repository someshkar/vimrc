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
  autocmd filetype rust nnoremap <f5> :w <bar> !rustc -o ./a.out % <cr> :vnew <bar> :te exec "./a.out" <cr><cr>
  autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
  autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END

" " Enable Flutter menu
" call FlutterMenu()

" Keybinds for the flutter CLI
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
autocmd BufWritePost *.dart DartFmt

" " Copy to system clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
nnoremap  <leader>yiw  "+yiw

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
