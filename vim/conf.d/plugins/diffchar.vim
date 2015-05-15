" vim-scripts/diffchar.vim
" @see http://qiita.com/takaakikasai/items/0d617b6e0aed490dff35

if &diff
	augroup enable_diffchar
		autocmd!
		autocmd VimEnter * execute "%SDChar"
	augroup END
endif

let g:DiffUnit = "Word3"
let g:DiffUpdate = 1
