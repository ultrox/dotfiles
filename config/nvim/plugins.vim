set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.cache/plugins')
" ----------------------------------------------------------------------
" | Other Plugins Not Specific                                         |
" ----------------------------------------------------------------------
runtime macros/matchit.vim
" Experimental
Plugin 'wellle/targets.vim'

Plugin 'sickill/vim-pasta' " context-aware pasting
Plugin 'AndrewRadev/splitjoin.vim'
" Plugin 'godlygeek/tabular'
Plugin 'junegunn/vim-easy-align'
Plugin 'tommcdo/vim-exchange'
" Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'        "=> Even faster then very fast
" ----------------------------------------------------------------------
" | User Interface                                                     |
" ----------------------------------------------------------------------
" Plugin 'yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired' " complementary mappings
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'
" Plugin 'tpope/vim-commentary' " comment stuff out
Plugin 'tomtom/tcomment_vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'ap/vim-buftabline'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'jwhitley/vim-colors-solarized'
Plugin 'ervandew/supertab'
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'trevordmiller/nova-vim'
Plugin 'terryma/vim-multiple-cursors'

" ----------------------------------------------------------------------
" | Smater Sintax - JS Specific                                        |
" ----------------------------------------------------------------------
" Plugin 'maksimr/vim-jsbeautify'

" Plugin 'scrooloose/syntastic'                   "=> Syntax checking, tu ukljuci elint
Plugin 'neomake/neomake'
Plugin 'othree/yajs.vim'                        "=> better modern sintax as oppose jelera/vim-javascript-syntax
Plugin 'othree/javascript-libraries-syntax.vim' "=> Specify sintax for jQuery, React etc
Plugin 'othree/es.next.syntax.vim'
"Plugin 'elzr/vim-json'
"Plugin 'ludovicchabant/vim-gutentags'          "=> Ctags gen for javascript ili jrfsn ili drugi
Plugin 'pangloss/vim-javascript'
"Plugin 'ramitos/jsctags'                       "=> Ctags gen Tern javascript
Plugin 'mxw/vim-jsx'                            "=> Syntax highlighting and indenting for JSX for React. JS syntax transformer
Plugin 'digitaltoad/vim-pug'					   "=> Prije se zvao Jade
" Plugin 'othree/html5.vim'
'
" ----------------------------------------------------------------------
" | Hellpers                                                           |
" ----------------------------------------------------------------------
Plugin 'rizzatti/dash.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-scripts/tinykeymap'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'kana/vim-textobj-user'
			\| Plugin 'machakann/vim-textobj-delimited'
			\| Plugin 'kana/vim-textobj-entire'
			\| Plugin 'Chun-Yang/vim-textobj-chunk'
			\| Plugin 'kana/vim-textobj-indent'
			\| Plugin 'kana/vim-textobj-line'
			\| Plugin 'mattn/vim-textobj-url'
			\| Plugin 'rhysd/vim-textobj-conflict'
			\| Plugin 'glts/vim-textobj-comment', { 'for': [ 'javascript', 'php' ] }
			\| Plugin 'jasonlong/vim-textobj-css',
			\   { 'for': [ 'css', 'sass', 'scss' ] }
			\| Plugin 'kana/vim-textobj-function'
			\| Plugin 'thinca/vim-textobj-function-javascript',
			\   { 'for': [ 'javascript' ] }


" Plugin 'vim-scripts/Toggle'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Xuyuanp/nerdtree-git-plugin' 
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Dealing with tags
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/MatchTagAlways'
" Plugin 'vim-scripts/Highlight-UnMatched-Brackets'
Plugin 'jiangmiao/auto-pairs'
" ----------------------------------------------------------------------
" | Completion                                                          |
" ----------------------------------------------------------------------
Plugin 'shawncplus/phpcomplete.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'Shougo/echodoc.vim'
" Plugin 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plugin 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plugin 'majutsushi/tagbar'

Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'

call vundle#end() 
