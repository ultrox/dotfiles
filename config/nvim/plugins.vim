" ----------------------------------------------------------------------
" | Other Plugs Not Specific                                         |
" ----------------------------------------------------------------------
call plug#begin('~/.nvim/plugged')

runtime macros/matchit.vim
Plug 'hashivim/vim-terraform'
Plug 'sickill/vim-pasta' " context-aware pasting
" Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-exchange'

Plug 'rking/ag.vim'        "=> Even faster then very fast
" Plug 'mileszs/ack.vim'
" Experimental
Plug 'wellle/targets.vim'
" ----------------------------------------------------------------------
" | User Interface                                                     |
" ----------------------------------------------------------------------
" Plug 'yggdroot/indentLine'
Plug 'qpkorr/vim-bufkill'
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
" Atempt to solve problems with importing modules
" Plug 'moll/vim-node'
" Plug 'galooshi/vim-import-js'
" ----------------------------------------------------------------------
" | Smater Sintax - JS Specific                                        |
" ----------------------------------------------------------------------
Plug 'sbdchd/neoformat' " install yamllint with pip
Plug 'w0rp/ale' " MYlinter it uses local eslint for js
Plug 'chase/vim-ansible-yaml'
Plug 'fatih/vim-go'
Plug 'othree/yajs.vim'                        "=> better modern sintax as oppose jelera/vim-javascript-syntax
Plug 'othree/javascript-libraries-syntax.vim' "=> Specify sintax for jQuery, React etc
Plug 'othree/es.next.syntax.vim'
Plug 'elzr/vim-json'
"Plug 'ludovicchabant/vim-gutentags'          "=> Ctags gen for javascript ili jrfsn ili drugi
Plug 'pangloss/vim-javascript'
"Plug 'ramitos/jsctags'                       "=> Ctags gen Tern javascript
Plug 'mxw/vim-jsx'                            "=> Syntax highlighting and indenting for JSX for React. JS syntax transformer
Plug 'digitaltoad/vim-pug'					   "=> Prije se zvao Jade
" Plug 'othree/html5.vim'
Plug 'chr4/nginx.vim'
Plug 'jparise/vim-graphql'
Plug 'wavded/vim-stylus'
" ----------------------------------------------------------------------
" | Hellpers                                                           |
" ----------------------------------------------------------------------

Plug 'suan/vim-instant-markdown'
Plug 'vim-scripts/star-search'
" Plug 'rizzatti/dash.vim'
Plug 'vimwiki/vimwiki'
" Plug 'vim-scripts/tinykeymap'
Plug 'terryma/vim-smooth-scroll'
Plug 'nelstrom/vim-visual-star-search'

Plug 'Chun-Yang/vim-textobj-chunk'
Plug 'kana/vim-textobj-user'

" Plug 'vim-scripts/Toggle'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Dealing with tags
Plug 'alvan/vim-closetag'
Plug 'Valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
" ----------------------------------------------------------------------
" | Completion                                                          |
" ----------------------------------------------------------------------
Plug 'shawncplus/phpcomplete.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'Shougo/echodoc.vim'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
call plug#end()
