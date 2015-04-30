" memolist settings

set grepprg=grep
let MyGrep_ExcludeReg = '[~#]$\|\.dll$\|\.exe$\|\.lnk$\|\.o$\|\.obj$\|\.pdf$\|\.xls$'
let g:MyGrepDefault_Ignorecase = 1

nnoremap <Leader>mn	:MemoNew<CR>
nnoremap <Leader>ml	:MemoList<CR>
nnoremap <Leader>mg	:MemoGrep<CR>

let g:memolist_path = $HOME."/Dropbox/VimMemo"
let g:memolist_template_dir_path = $HOME."Dropbox/VimMemo"
let g:memolist_qfixgrep = 1
let g:memolist_memo_suffix = "markdown"
let g:memolist_memo_date = "%Y-%m-%d %H:%M"
let g:memolist_prompt_tags = 1
let g:memolist_prompt_categories = 1
let g:memolist_unite = 1
let g:memolist_unite_source = "file_rec"
let g:memolist_unite_option = "-auto-preview -horizontal"
