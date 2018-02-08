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
" set relativenumber
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

set scrolloff=2    " Start scrolling when we're 8 lines away from margins
" set scrolloff=3  " lines of text around cursor
" set so=4         " set 7 lines to the cursors - when moving vertical
set sidescrolloff=15
set sidescroll=1
source ~/.config/nvim/part2.vim
source ~/.config/nvim/part3.vim 

" set statusline+=\ 
source ~/.config/nvim/autocmd.vim
source ~/.config/nvim/m-func.vim
source ~/.config/nvim/m-keymap.vim
source ~/.config/nvim/plugin_config.vim
