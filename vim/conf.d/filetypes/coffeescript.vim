" Coffeescript Settings

function! s:coffeescript()
  nnoremap <silent><buffer> <leader>c :<C-u>CoffeeCompile watch vertical<CR>
  nnoremap <silent><buffer> <leader>c :<C-u>'<,'>CoffeeCompile vertical
endfunction

augroup settings_coffeescript
  autocmd!
  autocmd FileType coffee call s:coffeescript()
augroup END
