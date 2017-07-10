let g:echodoc#enable_at_startup	= 1
"===========================================================
" => "Surround" tpope indeed
"===========================================================
let g:surround_no_mappings = 1
nmap ds     <Plug>Dsurround
nmap cs     <Plug>Csurround
nmap s      <Plug>Ysurround
nmap S      <Plug>YSurround
nmap ss     <Plug>Yssurround
nmap Ss     <Plug>YSsurround
nmap SS     <Plug>YSsurround
xmap S      <Plug>VSurround
xmap gS     <Plug>VgSurround
imap <C-G>s <Plug>Isurround
imap <C-G>S <Plug>ISurround
"===========================================================
" => Supertab Settings
"===========================================================
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
" be careful about this, backup it
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
" let g:UltiSnipsSnippetsDir="~/dotfiles/config/UltiSnips"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" " close preivew window when you are not using it
" let g:SuperTabClosePreviewOnPopupClose = 1
"===========================================================
" => Setting up DeoPlate
"===========================================================
set completeopt-=preview
" set completeopt=longest,menuone,preview
" set completeopt=menuone,noinsert,noselect


let g:deoplete#keyword_patterns = {}
let g:deoplete#sources = {}
let g:deoplete#omni_patterns = {}
let g:deoplete#omni#input_patterns = {}
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" let g:deoplete#omni#functions.javascript = 'jspc#omni' "[
"   " \ 'tern#Complete',
"   " 'jspc#omni'
" " ]

let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'buffer']
" Will make omni autosuggest all the time, I prefer triggering it on my own
" let g:deoplete#omni_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
" let g:deoplete#keyword_patterns.default = '[a-zA-Z_]\w{2,}?'
let g:deoplete#enable_ignore_case = 'ignorecase'

" let g:deoplete#omni_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" omnifuncs
" augroup omnifuncs
"  autocmd!
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end

"" tern
"if exists('g:plugs["tern_for_vim"]')
"  let g:tern_show_argument_hints = 'on_hold'
"  let g:tern_show_signature_in_pum = 1
"  autocmd FileType javascript setlocal omnifunc=tern#Complete
"endif
"
"" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" "If you are using tern-for-vim this is recomended
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']

" if !exists('g:deoplete#omni#input_patterns')
" 	let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" let g:deoplete#omni#functions = {}
"

" "autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"===========================================================
" => NeoMake and syntax - async linting
"===========================================================
" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

autocmd! BufWritePost,BufEnter * Neomake
" let g:neomake_verbose=3
let g:neomake_logfile='/tmp/error.log'

let g:neomake_javascript_enabled_makers = ['eslint'] "eslint

"===========================================================
" => FZF & NerdTree
"===========================================================

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>\ :NERDTreeFind<cr>
" close after opening file
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1


let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

let g:fzf_nvim_statusline = 0 " disable statusline overwriting
let g:fzf_layout = { 'down': '~25%' }
" Better command history with q:
command! CmdHist call fzf#vim#command_history({'down': '~25%'})
nnoremap q: :CmdHist<CR>

" Better search history shit I was looking with vim search
command! QHist call fzf#vim#search_history({'down': '~25%'})
nnoremap q/ :QHist<CR>
" <C-p> or <C-t> to search files
nnoremap <silent> <leader>p :FZF -m<cr>

nmap <silent> <leader>a :Buffers<cr>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-k> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Use fuzzy completion relative filepaths across directory
" imap <expr> <F1> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')
" imap <expr> <leader>p fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')
" nnoremap <silent> <F1> :Buffers<cr>

nnoremap <silent> <F2> :History -m<cr>
nnoremap <silent> <F3> :FZF -m<cr>
command! FZFMru call fzf#run({
			\  'source':  v:oldfiles,
			\  'sink':    'e',
			\  'options': '-m -x +s',
			\  'down':    '40%'})


" AutoPair configurations
au Filetype vim let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'", '`':'`'}
au Filetype markdown let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'", '"':'"'}

"===========================================================
" => MatchTag always
"===========================================================
let g:mta_set_default_matchtag_color = 0
let g:mta_use_matchparen_group = 0
" highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
hi MatchTag ctermfg=red cterm=underline
highlight clear MatchParen
hi MatchParen cterm=underline ctermbg=none ctermfg=red
" highlight MatchParen ctermbg=blue guibg=lightblue
let g:mta_filetypes = {
			\'php': 1,
			\ 'html' : 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\ 'javascript.jsx' : 1,
			\}

nnoremap <leader>% :MtaJumpToOtherTag<cr>

"===========================================================
" => Smooth Scrolling
"===========================================================

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>


nmap ga <Plug>(EasyAlign)
vmap <Enter> <Plug>(EasyAlign)

nnoremap <Leader>l :Dash <C-r><C-w> 
vmap <Leader>l "py :Dash <C-r>p


"===========================================================
" => VimWiki
"===========================================================
let g:vimwiki_list = [{'path': '~/Google Drive/vimwiki',
			\ 'syntax': 'markdown', 'ext': '.md'}]

"===========================================================
" => Others
"===========================================================
nmap gj :SplitjoinSplit<cr>
nmap gk :SplitjoinJoin<cr>

" React jsx syntax
let g:jsx_ext_required = 0

" Auto closing tags plugin
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx, *.php"
"===========================================================
" => Markdown Preview
"===========================================================
" let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_browser='Google Chrome'
" Makes markdown preview on file save and some other performance vs confort 
" let g:instant_markdown_slow = 1
" Open markdown files with Chrome.
" autocmd BufEnter *.md exe 'noremap <F5> :!open -a "Google Chrome" "%"<CR>'

"===========================================================
" => Ctags + Tagbar
"===========================================================
" let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
" let g:tagbar_width=26                          " Default is 40, seems too wide
" noremap <silent> <Leader>y :TagbarToggle       " Display panel with y (or ,y)


"===========================================================
" => TinyModes
"===========================================================
" call tinykeymap#Load('windows')
"
" call tinykeymap#Map('windows', 'l', 'wincmd >')
" call tinykeymap#Map('windows', 'h', 'wincmd <')
" call tinykeymap#Map('windows', 'j', 'wincmd +')
" call tinykeymap#Map('windows', 'k', 'wincmd -')

"===========================================================
" => Indent Line
"===========================================================

" let g:indentLine_setColors = 0
" let g:indentLine_setConceal = 0
" let g:indentLine_color_term = 239
" let g:indentLine_char = 'c'

"===========================================================
" => Airline Optionsw
"===========================================================
" let g:airline#extensions#tabline#enabled=4 
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_powerline_fonts = 1
" let g:airline_theme='solarized'

" ove dvije su mi bile iskljucene
"let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
"let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline

" let g:airline#extensions#tabline#show_splits = 0


