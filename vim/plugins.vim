" autoinstall vim-plug if it's missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme', { 'do': 'cp colors/* ~/.vim/colors/' }

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
" colorschemes
" Currently, wombat, solarized, powerline, jellybeans, Tomorrow,
" Tomorrow_Night, Tomorrow_Night_Blue, Tomorrow_Night_Eighties,
" PaperColor, seoul256, landscape, one, Dracula, darcula,
" molokai, materia, material, OldHope, nord and 16color are available.
" Syntax Check
Plug 'itchyny/lightline.vim'
let g:lightline = {
      \   'colorscheme': 'PaperColor'
      \ }
Plug 'scrooloose/syntastic'

Plug 'nathanaelkane/vim-indent-guides'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" typescript
Plug 'Quramy/tsuquyomi', { 'for': ['typescript'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
Plug 'mhartington/vim-typings', { 'for': ['typescript'] }

" HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'erb', 'ejs', 'css'] }
Plug 'lepture/vim-velocity', { 'for': ['velocity'] }
Plug 'chaquotay/ftl-vim-syntax', { 'for': ['ftl'] }
Plug 'digitaltoad/vim-jade', { 'for': ['jade'] }

" CSS
" Plug 'stephenway/postcss.vim', { 'for': [ 'css' ] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
" Plug 'wavded/vim-stylus', { 'for': ['stylus'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css'] }

" Go
Plug 'fatih/vim-go', { 'for': ['go'] }

" Dots
Plug 'wannesm/wmgraphviz.vim', { 'for': [ 'dot' ] }

Plug 'kannokanno/previm', { 'for': ['markdown'] }
Plug 'thinca/vim-localrc'
Plug 'glidenote/memolist.vim'
Plug 'vim-scripts/diffchar.vim'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript'] }
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow', {
      \   'for': ['javascript'],
      \   'do': 'npm install -g flow-bin'
      \ }

Plug 'dart-lang/dart-vim-plugin', { 'for': ['dart'] }

call plug#end()
