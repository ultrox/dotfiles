syntax on
set cpoptions+=$                "kad 'change' prikaze $
set ttyfast                      " faster redrawing

set hidden                " current buffer can be put into background
"===========================================================
" => Searching
"===========================================================
set ignorecase            " case insensitive searching
set smartcase             " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch             " set incremental search, like modern browsers
set gdefault              " global je default kad search/replace
set lazyredraw            " marcorsi ne pokazuju nista na display-u
set magic                 " Set magic on, for regex

set noerrorbells
set visualbell
filetype plugin on
filetype indent on

set cursorline                  " highlight the current line
" cursor change depending on the mode nvim
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

