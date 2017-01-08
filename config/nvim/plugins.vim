call plug#begin('~/.config/nvim/plugged')
" ----------------------------------------------------------------------
" | Other Plugins Not Specific                                         |
" ----------------------------------------------------------------------

runtime macros/matchit.vim
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'AndrewRadev/splitjoin.vim'
Plug 'godlygeek/tabular'
Plug 'tommcdo/vim-exchange'
" Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'        "=> Even faster then very fast
" ----------------------------------------------------------------------
" | User Interface                                                     |
" ----------------------------------------------------------------------

Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired' " complementary mappings
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tomtom/tcomment_vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'takac/vim-hardtime'
" let g:hardtime_default_on = 1
"Plug 'altercation/vim-colors-solarized'
Plug 'jwhitley/vim-colors-solarized'
" Plug 'ervandew/supertab'
Plug 'ludovicchabant/vim-gutentags'
" ----------------------------------------------------------------------
" | Smater Sintax - JS Specific                                        |
" ----------------------------------------------------------------------
" Plug 'maksimr/vim-jsbeautify'

" Plug 'scrooloose/syntastic'                   "=> Syntax checking, tu ukljuci elint
Plug 'neomake/neomake'
Plug 'othree/yajs.vim'                        "=> better modern sintax as oppose jelera/vim-javascript-syntax
Plug 'othree/javascript-libraries-syntax.vim' "=> Specify sintax for jQuery, React etc
Plug 'othree/es.next.syntax.vim'
"Plug 'elzr/vim-json'
"Plug 'ludovicchabant/vim-gutentags'          "=> Ctags gen for javascript ili jrfsn ili drugi
Plug 'pangloss/vim-javascript'
"Plug 'ramitos/jsctags'                       "=> Ctags gen Tern javascript
Plug 'mxw/vim-jsx'                            "=> Syntax highlighting and indenting for JSX for React. JS syntax transformer
" ----------------------------------------------------------------------
" | Hellpers                                                           |
" ----------------------------------------------------------------------
Plug 'terryma/vim-smooth-scroll'
Plug 'nelstrom/vim-visual-star-search'
Plug 'kana/vim-textobj-user'
			\| Plug 'machakann/vim-textobj-delimited'
			\| Plug 'kana/vim-textobj-entire'
			\| Plug 'Chun-Yang/vim-textobj-chunk'
			\| Plug 'kana/vim-textobj-indent'
			\| Plug 'kana/vim-textobj-line'
			\| Plug 'mattn/vim-textobj-url'
			\| Plug 'rhysd/vim-textobj-conflict'
			\| Plug 'glts/vim-textobj-comment', { 'for': [ 'javascript', 'php' ] }
			\| Plug 'jasonlong/vim-textobj-css',
			\   { 'for': [ 'css', 'sass', 'scss' ] }
			\| Plug 'kana/vim-textobj-function'
			\| Plug 'thinca/vim-textobj-function-javascript',
			\   { 'for': [ 'javascript' ] }


" Plug 'vim-scripts/Toggle'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Dealing with tags
Plug 'alvan/vim-closetag'
Plug 'Valloric/MatchTagAlways'
" Plug 'vim-scripts/Highlight-UnMatched-Brackets'
Plug 'jiangmiao/auto-pairs'
" ----------------------------------------------------------------------
" | Completion                                                          |
" ----------------------------------------------------------------------

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
call plug#end()

