" Personal Settings

nnoremap <C-t> :<C-u>tabnew<CR>
nnoremap <C-h> :<C-u>tabprevious<CR>
nnoremap <C-l> :<C-u>tabnext<CR>

inoremap <C-\> <ESC>0i
inoremap <C-a> <ESC>$a


"------------------------------------
"" indent_guides
"------------------------------------
"" インデントの深さに色を付ける
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=1
let g:indent_guides_space_guides=1

hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=237
au FileType coffee,ruby,javascript,python IndentGuidesEnable
nmap <silent><Leader>ig <Plug>IndentGuidesToggle
" nnoremap <silent><C-e> :NERDTreeToggle<CR>


"------------------------------------
" restore scroll position
"------------------------------------
if has("autocmd")
	autocmd BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
				\	exe "normal! g'\"" | endif
endif
"------------------------------------

