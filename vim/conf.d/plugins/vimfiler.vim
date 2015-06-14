" VimFiler

let file_name = expand("%")
if has('vim_starting') && file_name == ""
  autocmd VimEnter * VimFiler -buffer-name=explorer -simple -split -winwidth=30 -no-quit
endif

" KeyMap
nnoremap <silent><C-e> :VimFiler -buffer-name=explorer -simple -split -winwidth=30 -toggle -no-quit<CR>

autocmd! FileType vimfiler call s:my_vimfiler_settings()

function! s:my_vimfiler_settings()
  nmap     <buffer><expr><CR> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
  nnoremap <buffer>s          :call vimfiler#mappings#do_action('my_split')<CR>
  nnoremap <buffer>v          :call vimfiler#mappings#do_action('my_vsplit')<CR>
endfunction

let s:my_action = { 'is_selectable' : 1 }
function! s:my_action.func(candidates)
  wincmd p
  exec 'split '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_split', s:my_action)

let s:my_action = { 'is_selectable' : 1 }
function! s:my_action.func(candidates)
  wincmd p
  exec 'vsplit '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_vsplit', s:my_action)

let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default=0
