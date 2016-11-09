call plug#begin('~/.config/nvim/plugged')
Plug 'rking/ag.vim'        "=> Even faster then very fast
" User Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'takac/vim-hardtime'
let g:hardtime_default_on = 1

Plug 'tommcdo/vim-exchange'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary' " comment stuff out
"Plug 'altercation/vim-colors-solarized'
Plug 'jwhitley/vim-colors-solarized'
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'AndrewRadev/splitjoin.vim'

Plug 'ervandew/supertab'
"Plug 'gregsexton/MatchTag'
Plug 'Valloric/MatchTagAlways'
Plug 'ludovicchabant/vim-gutentags'
" ----------------------------------------------------------------------
" | Smater Sintax - JS Specific                                        |
" ----------------------------------------------------------------------
Plug 'scrooloose/syntastic'                       "=> Syntax checking, tu ukljuci elint
Plug 'othree/yajs.vim' "=> better modern sintax as oppose jelera/vim-javascript-syntax
Plug 'othree/javascript-libraries-syntax.vim'   "=> Specify sintax for jQuery, React etc
Plug 'othree/es.next.syntax.vim'
"Plug 'elzr/vim-json'
"Plug 'ludovicchabant/vim-gutentags'             "=> Ctags gen for javascript ili jrfsn ili drugi
Plug 'pangloss/vim-javascript'
"Plug 'ramitos/jsctags'                          "=> Ctags gen Tern javascript

Plug 'mxw/vim-jsx'															 "=> Syntax highlighting and indenting for JSX for React. JS syntax transformer


"		Hellpers 
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | "Plug 'ryanoasis/vim-devicons' " file drawer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
call plug#end()


