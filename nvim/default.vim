let s:dotfiles_dir = $HOME."/dotfiles"
let s:vim_dir = s:dotfiles_dir."/nvim"

" Default setting
set number
set showmatch matchtime=1
set listchars=eol:$,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set clipboard+=unnamed

set smartindent
set splitright
set splitbelow

set nobackup
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set showcmd
set backspace=indent,eol,start
set foldmethod=marker
set showcmd
filetype plugin indent on

set termguicolors
if &term == 'screen-256color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set background=dark

let mapleader=','

" Undo
let g:local_backup_dir=s:vim_dir.'/.backup'
let g:local_swap_dir=s:vim_dir.'/.swap'
let g:local_undo_dir=s:vim_dir.'/.undo'

if !filewritable(g:local_backup_dir)
  call mkdir(g:local_backup_dir)
endif
if !filewritable(g:local_swap_dir)
  call mkdir(g:local_swap_dir)
endif
if !filewritable(g:local_undo_dir)
  call mkdir(g:local_undo_dir)
endif
let &directory=g:local_swap_dir
let &backupdir=g:local_backup_dir

set backup
set writebackup

if has('persistent_undo')
  let &undodir=g:local_undo_dir
  set undofile
endif

" Personal Map
nnoremap <C-t> :<C-u>tabnew<CR>
nnoremap <C-h> :<C-u>tabprevious<CR>
nnoremap <C-l> :<C-u>tabnext<CR>
nnoremap <silent> gp :bprevious<CR>
nnoremap <silent> gn :bnext<CR>

" Scroll Position
if has("autocmd")
  autocmd BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal! g'\"" | endif
endif
