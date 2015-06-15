
" startify
NeoBundle 'mhinz/vim-startify'

" vimproc
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build': {
			\		'windows': 'make -f make_wingw32.mak',
			\		'cygwin' : 'make -f make_cygwin.mak',
			\		'mac'    : 'make -f make_mac.mak',
			\		'unix'   : 'make -f make_unix.mak',
			\	},
			\ }

" Complete
NeoBundle 'Valloric/YouCompleteMe', {
			\ 'build_commands': 'cmake',
			\ 'build': {
			\		'mac': './install.sh --clang-completer',
			\		'unix': './install.sh --clang-completer',
			\		},
			\ }

" Snippet
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

" surround
NeoBundle 'tpope/vim-surround'

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'gregsexton/gitv', {
            \ 'depends' : 'tpope/vim-fugitive',
            \ }

" NERDTree
" NeoBundle 'scrooloose/nerdtree'
" Coloring Log
NeoBundle 'vim-scripts/AnsiEsc.vim'
" Comment out on/off with Shift+V -> Ctrl+-
NeoBundle 'tomtom/tcomment_vim'

" unite.vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
" VimFiler
NeoBundle 'Shougo/vimfiler.vim'
" vimshell
NeoBundle 'Shougo/vimshell.vim'

" light line
NeoBundle 'cocopon/lightline-hybrid.vim'
NeoBundle 'itchyny/lightline.vim'
" Syntax Check
NeoBundle "scrooloose/syntastic"


" Editor config
NeoBundle "editorconfig/editorconfig-vim"

" Javascript
NeoBundle 'moll/vim-node', {
			\	'autoload': {
			\		'filetypes': ['javascript']
			\	}
			\}
NeoBundle 'pangloss/vim-javascript', {
			\	'autoload': {
			\		'filetypes': ['javascript']
			\	}
			\}
NeoBundleLazy 'jelera/vim-javascript-syntax', {
			\	'autoload': {
			\		'filetypes': ['javasciprt']
			\	}
			\}
NeoBundle 'kchmck/vim-coffee-script', {
			\	'autoload': {
			\		'filetypes': ['coffee']
			\	}
			\}
NeoBundle 'briancollins/vim-jst', {
			\	'autoload': {
			\		'filetypes': ['jst', 'ejs']
			\	}
			\}
NeoBundle 'heavenshell/vim-jsdoc', {
			\	'autoload': {
			\		'filetypes': ['javascript']
			\	}
			\}
NeoBundle 'nathanaelkane/vim-indent-guides'

" HTML / CSS
NeoBundle 'mattn/emmet-vim', {
			\	'autoload': {
			\		'filetypes': ['html', 'erb', 'ejs']
			\	}
			\}
NeoBundle 'cakebaker/scss-syntax.vim', {
			\	'autoload': {
			\		'filetypes': ['scss']
			\	}
			\}
NeoBundle 'wavded/vim-stylus', {
			\	'autoload': {
			\		'filetypes': ['stylus']
			\	}
			\}
NeoBundle 'hail2u/vim-css3-syntax', {
			\	'autoload': {
			\		'filetypes': ['css']
			\	}
			\}
" jade
NeoBundleLazy 'digitaltoad/vim-jade', {
			\	'autoload': {
			\		'filetypes': ['jade']
			\	},
			\}
" markdown
NeoBundleLazy 'kannokanno/previm', {
			\	'autoload': {
			\		'filetypes': ['markdown']
			\	}
			\}
NeoBundle 'thinca/vim-localrc'
NeoBundle 'glidenote/memolist.vim', {
			\	'autoload': {
			\		'filetypes': ['markdown']
			\	}
			\}

" diff
NeoBundle 'vim-scripts/diffchar.vim'

