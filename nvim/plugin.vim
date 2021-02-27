let g:dein#auto_recache = 1

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/dotfiles/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:rc_dir = expand('~/dotfiles/nvim')

if has('vim_starting')
  if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
  endif
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:rc_dir . '/dein.toml', {'lazy': 0})
  " if !has('nvim')
  "   call dein#load_toml(s:rc_dir . '/dein_nvim.toml', {'lazy': 0})
  " endif
  call dein#load_toml(s:rc_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
