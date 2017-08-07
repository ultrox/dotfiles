source ~/.config/nvim/plugins.vim

" ------------------------------------
" Typing key combos - Try this, not tested
" ------------------------------------
let g:python_host_prog = '/usr/local/opt/python/libexec/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" let g:python_host_prog='/usr/local/bin/python2'

" /usr/local/bin/python3
"set notimeout
"set ttimeout
"set ttimeoutlen=10
let mapleader="\<SPACE>"  
set nocompatible               " not compatible with vi nije potrebno ako ima .vimrc(dafault)

set autoread                    " detect when a file is changed
set autowrite                   " auto sejvuje fajlove prije komadni :next :make etc
set number
set numberwidth=4               " indentira brojeve sa ljeve strane za x pixela
set relativenumber
set backspace=indent,eol,start " make backspace behave in a sane manner
set history=1000               " change history to 1000

" Kad upises :Wrap podesi sve da se linije prekinu na spaceu
command! -nargs=* Wrap set wrap linebreak nolist

set cpoptions+=$                "kad 'change' prikaze $
if has('clipboard')
  set clipboard=unnamed  " Use clipboard register

  " Share X windows clipboard. NOT ON NEOVIM -- neovim automatically uses
  " system clipboard when xclip/xsel/pbcopy are available.
  if has('nvim') && !has('mac')
    set clipboard=unnamedplus
  elseif has('unnamedplus')
    set clipboard+=unnamedplus
  endif
endif
set ttyfast                      " faster redrawing
set diffopt+=vertical            "pojma nemam sta je ovo
"===========================================================
" => User Interface
"===========================================================
set fillchars+=vert:\│		" promjeni isprekidane crte u jednu cjelu | vs │
hi clear VertSplit		" ocisti margine ili napravi nevidljivim

set cursorline                  " highlight the current line
" cursor change depending on the mode nvim
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set guifont=Inconsolata\ for\ Powerline:h16
" Theme config
syntax on
set t_Co=256
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized
set noshowmode              " don't show which mode disabled for PowerLine echodocs

"UI end
"-s-------------------------------------------------------------------------
set wildmenu              	" enhanced command line completion
" set wildmode=list:full    	" pokaze listu svih koji match, i traverse
set wildignorecase
" output, VCS
set wildignore+=.git,.hg,.svn
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.gem
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,.lock,.DS_Store,._*

"---------------------------------------------------------------------------
set hidden                " current buffer can be put into background
set showcmd               " show incomplete commands (pokazuje <20> kad stisnem space) space leader
"set noshowmode            " ne pokazuj MODE, ovo je zbog POWERLINE
set shell=$SHELL
set cmdheight=1           " command bar height
set title                 " set terminal title
set synmaxcol=512         " don't syntax highlight long lines
"===========================================================
" => Scroling
"===========================================================

set scrolloff=3    " Start scrolling when we're 8 lines away from margins
" set scrolloff=3  " lines of text around cursor
" set so=4         " set 7 lines to the cursors - when moving vertical
set sidescrolloff=15
set sidescroll=1

"===========================================================
" => Searching
"===========================================================
set ignorecase            " case insensitive searching
set smartcase             " case-sensitive if expresson contains a capital letter
set hlsearch
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
nnoremap / /\v
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


"===========================================================
" => Indenting
"===========================================================

" http://vimcasts.org/episodes/tabs-and-spaces/

set autoindent           "indentiraj kad pravis novu liniju
"set smartindent     	 "it seams this is usless and shuld be avoided
set smarttab             "postuje vrijednosti 'tabstop','shiftwidth' and 'softtabstop'
set tabstop=2            "Podesi vidljivu sirinu taba (velicina je sirina slova)
set shiftwidth=2         "Koliko ce tekst biti indentovan kad se reindentira << >>
set softtabstop=2        "Precizno podesi koliko 'whitespace' ce se ubaciti
set expandtab           "Koristi space umjesto taba
" set noexpandtab          "Koristi Tabove umjesto space
set wrapmargin=8         "wrap lines when coming within n characters from side

filetype plugin on
filetype indent on

" hard-wraping  http://vimcasts.org/episodes/hard-wrapping-text/

set textwidth=120        "Automatski wrapuje tekst na 120om karakteru zavisno od formatoptions=+ta
set wrap                 "Dopusta vidljivost teksta kad je viewport smanjen
set linebreak            "Wrap lines at convenient points
set showbreak=…          "show ellipsis at breaking

set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying

"toggle invisible characters (:set list!)
set nolist

"===========================================================
" => Folds
"===========================================================

set foldmethod=manual        "fold based on indent
set foldnestmax=10           "deepest fold is 3 levels
set nofoldenable             "dont fold by default


"===========================================================
" => StatusLine
"===========================================================
set laststatus=2 " show the satus line all the time
" set statusline=
" set statusline=\ %f
" set statusline+=\ %h%w%m%r
" set statusline+=%=
" set statusline+=%-16(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
" set statusline+=\ %P/%L
" set statusline+=\
set statusline=
set statusline+=%#PmenuSel#
" set statusline+=%-16(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab

" set statusline+=\ 
source ~/.config/nvim/autocmd.vim
source ~/.config/nvim/m-func.vim
source ~/.config/nvim/m-keymap.vim
source ~/.config/nvim/plugin_config.vim
