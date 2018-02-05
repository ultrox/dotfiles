"===========================================================
" => Searching
"===========================================================
set ignorecase            " case insensitive searching
set smartcase             " case-sensitive if expresson contains a capital letter
" set hlsearch
set incsearch             " set incremental search, like modern browsers
set gdefault              " global je default kad search/replace
set lazyredraw            " marcorsi ne pokazuju nista na display-u
" Use sane regexes
" set magic                 " Set magic on, for regex

set showmatch             " show matching braces
set mat=2                 " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Use sane regexes.
" nnoremap / /\v
vnoremap / /\v	
" ----------------------------------------------------------------------------
" Special highlights
" ----------------------------------------------------------------------------
" misspellings
match ErrorMsg 'targett'
match ErrorMsg 'plugn'

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"===========================================================
" => Color Scheme
"===========================================================

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

let base16colorspace=256 " Access colors present in 256 colorspace
set background=dark

"===========================================================
" => Turn Off Swap Files + Presistant Undo
"===========================================================

set noswapfile      " usless no swap
set backup
set nowb
set backupdir=~/.nvim/tmp/backup// " backups
set directory=~/.nvim/tmp/swap//   " swap files


"thanks boy http://howivim.com/2016/damian-conway/
" Put plugins and dictionaries in this dir (also on Windows)


if has('persistent_undo')
    set undolevels=5000
    set undoreload=10000
    set undodir=~/.nvim/tmp/undo//     " undo files
    set undofile
endif


" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif


