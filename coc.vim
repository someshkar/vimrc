" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim

let g:coc_global_extensions = [
  \ 'coc-tsserver',
	\ 'coc-lists',
	\ 'coc-json',
	\ 'coc-css',
	\ 'coc-html',
	\ 'coc-yaml',
	\ 'coc-yank',
	\ 'coc-emmet',
  \ 'coc-svelte',
	\ 'coc-prisma',
	\ 'coc-python',
	\ 'coc-elixir',
  \ 'coc-explorer',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-go'
  \ ]

" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif

" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(0, 'ShowDocIfNoDiagnostic')
endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>o :<C-u>CocList outline<cr>
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" Trigger completion with c-space
inoremap <silent><expr> <c-space> coc#refresh()

" Explorer
nmap <leader>e :CocCommand explorer<CR>

