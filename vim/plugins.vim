" autoinstall vim-plug if it's missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'w0ng/vim-hybrid'

Plug 'Valloric/YouCompleteMe', { 'do': 'brew install cmake; ./install.py --clang-completer --gocode-completer --tern-completer' }

" startify
Plug 'mhinz/vim-startify'
" unite.vim
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'

Plug 'Shougo/vimproc.vim', {
      \		'do': 'make -f make_mac.mak'
      \	}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-surround'

Plug 'Lokaltog/vim-easymotion'
Plug 'osyo-manga/vim-over'

Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv' | Plug 'tpope/vim-fugitive'

" Coloring Log
Plug 'vim-scripts/AnsiEsc.vim'
" Comment out on/off with Shift+V -> Ctrl+-
Plug 'tomtom/tcomment_vim'

" VimFiler
Plug 'Shougo/vimfiler.vim'
" vimshell
Plug 'Shougo/vimshell.vim'

" light line
Plug 'cocopon/lightline-hybrid.vim'
Plug 'itchyny/lightline.vim'
" Syntax Check
Plug 'scrooloose/syntastic'

Plug 'nathanaelkane/vim-indent-guides'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" javascript
Plug 'moll/vim-node', { 'for': ['javascript'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript'] }
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript'] }

" typescript
Plug 'Quramy/tsuquyomi', { 'for': ['typescript'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }

" HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'erb', 'ejs', 'css'] }
Plug 'lepture/vim-velocity', { 'for': ['velocity'] }
Plug 'chaquotay/ftl-vim-syntax', { 'for': ['ftl'] }
Plug 'digitaltoad/vim-jade', { 'for': ['jade'] }

" CSS
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'wavded/vim-stylus', { 'for': ['stylus'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css'] }

" Go
Plug 'fatih/vim-go', { 'for': ['go'] }

Plug 'kannokanno/previm', { 'for': ['markdown'] }
Plug 'thinca/vim-localrc'
Plug 'glidenote/memolist.vim'
Plug 'vim-scripts/diffchar.vim'

call plug#end()
