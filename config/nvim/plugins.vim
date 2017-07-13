" ----------------------------------------------------------------------
" | Other Plugs Not Specific                                         |
" ----------------------------------------------------------------------
call plug#begin('~/.nvim/plugged')

runtime macros/matchit.vim
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-exchange'
" Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'        "=> Even faster then very fast
" ----------------------------------------------------------------------
" | User Interface                                                     |
" ----------------------------------------------------------------------
" Plug 'yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired' " complementary mappings
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tomtom/tcomment_vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-buftabline'
"Plug 'altercation/vim-colors-solarized'
Plug 'jwhitley/vim-colors-solarized'
Plug 'ervandew/supertab'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'trevordmiller/nova-vim'
Plug 'terryma/vim-multiple-cursors'

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
Plug 'digitaltoad/vim-pug'					   "=> Prije se zvao Jade
" Plug 'othree/html5.vim'
'
" ----------------------------------------------------------------------
" | Hellpers                                                           |
" ----------------------------------------------------------------------
Plug 'rizzatti/dash.vim'
Plug 'vimwiki/vimwiki'
Plug 'vim-scripts/tinykeymap'
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
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Dealing with tags
Plug 'alvan/vim-closetag'
Plug 'Valloric/MatchTagAlways'
" Plug 'vim-scripts/Highlight-UnMatched-Brackets'
Plug 'jiangmiao/auto-pairs'
" ----------------------------------------------------------------------
" | Completion                                                          |
" ----------------------------------------------------------------------
Plug 'shawncplus/phpcomplete.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'majutsushi/tagbar'

Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
call plug#end()

