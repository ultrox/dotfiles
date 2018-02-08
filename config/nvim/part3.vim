"===========================================================
" => Indenting
"===========================================================

" http://vimcasts.org/episodes/tabs-and-spaces/

set autoindent           "indentiraj kad pravis novu liniju
" TAB or SPACE
set expandtab           "Koristi space umjesto taba
" set noexpandtab          "Koristi Tabove umjesto space

"set smartindent     	 "it seams this is usless and shuld be avoided
set smarttab             "postuje vrijednosti 'tabstop','shiftwidth' and 'softtabstop'
set tabstop=2            "Podesi vidljivu sirinu taba (velicina je sirina slova)
set shiftwidth=2         "Koliko ce tekst biti indentovan kad se reindentira << >>
set softtabstop=2        "Precizno podesi koliko 'whitespace' ce se ubaciti
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

set foldmethod=indent        "fold based on indent
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
