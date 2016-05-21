" Tsuquyomi

" autocmd FileType typescript setlocal completeopt-=menu
autocmd Filetype typescript setlocal completeopt+=menu,preview

let g:tsuquyomi_completion_detail = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

