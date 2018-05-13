if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"===========================================================
" => Syntax pangloss vim
"===========================================================
let g:javascript_plugin_flow = 1

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
" => Sneak Settings
"===========================================================
" nmap f <Plug>Sneak_s
" nmap F <Plug>Sneak_S
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


let g:deoplete#keyword_patterns = {}
let g:deoplete#sources = {}
let g:deoplete#omni_patterns = {}
let g:deoplete#omni#input_patterns = {}
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"       \ 'tern#Complete',
"       \ 'jspc#omni'
"       \]

" set completeopt=longest,menuone,preview
" set completeopt-=preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['buffer', 'ultisnips']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'buffer']
" Will make omni autosuggest all the time, I prefer triggering it on my own
" let g:deoplete#omni_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
" let g:deoplete#keyword_patterns.default = '[a-zA-Z_]\w{2,}?'
" let g:deoplete#enable_ignore_case = 'ignorecase'

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

" tern
" if exists('g:plugs["tern_for_vim"]')
"   let g:tern_show_argument_hints = 'on_hold'
"   let g:tern_show_signature_in_pum = 1
"   autocmd FileType javascript setlocal omnifunc=tern#Complete
" endif

"" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" if !exists('g:deoplete#omni#input_patterns')
" 	let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" let g:deoplete#omni#functions = {}
"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"===========================================================
" => Emmet
"===========================================================
let g:user_emmet_leader_key='<C-e>'
inoremap <C-e>e <esc>:call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>wwi
nnoremap <C-e>e :call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>:.g/"/ norm cs"{<cr>==<cr>
" nnoremap <C-e>e :call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>ww

" let g:user_emmet_leader_key='<C-Z>'
"this is becouse emmet uses different kind of ft jsx, instead of javascript.jsx
let emmet_html5 = 0
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \        'empty_elements': 'i',
      \        'quote_char': "'",
      \       'default_attributes': {
      \       'label': [{'htmlFor': ''}],
      \        'form': [{'onSubmit': '{this.handleSubmit}'}],
      \    }
      \  },
      \ 'foo': {
      \       'extends': 'html',
      \        'empty_elements': 'i',
      \      }
      \}
"===========================================================
" => Ale config and syntax - async linting lint lint eslint linting
"===========================================================
" let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'
" nnoremap gp :silent %!prettier --stdin --trailing-comma all  --tab-width 4<CR>

let g:ale_sign_error = '×'
" Quck location
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

"===========================================================
" => NeoFormat & Prettier 
"===========================================================
let g:neoformat_only_msg_on_error = 1
let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_javascript = ['prettier']

"\ 'args': ['--trailing-comma es5','--semi'],
let g:neoformat_javascript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--config /Users/markovujanic/ajando/lms/.prettierrc.yaml'],
      \ }

let g:neoformat_yaml = {
      \ 'exe': 'yaml',
      \ 'args': ['merge-expand'],
      \ 'stdin': 1, 
      \ 'no_append': 1,
      \ }

nnoremap gp :Neoformat<CR>

"===========================================================
" => FZF & NerdTree
"===========================================================

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>l :call MyNerdToggle()<cr>
nnoremap <C-\> :call MyNerdToggle()<CR>

let NERDTreeIgnore=['node_modules2', '\~$', '.git', 'package-lock.json', '.DS_Store']

" close after opening file
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeHighlightCursorline = 1

let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'
let NERDTreeMapJumpFirstChild = 'gK'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:bg .' guifg='. a:fg
endfunction

call NERDTreeHighlightFile('json', 'red', 'NONE')

" End NERDTREE
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
" fuzzy mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap <silent> <F4> <plug>(fzf-maps-i)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-f> <plug>(fzf-complete-file-ag)
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

" nnoremap <Leader>l :Dash <C-r><C-w> 
" vmap <Leader>l "py :Dash <C-r>p
" map  <Leader>l <Plug>(easymotion-bd-f)
" nmap <Leader>l <Plug>(easymotion-overwin-f)

"===========================================================
" => VimWiki
"===========================================================
let g:vimwiki_list = [{'path': '~/GoogleDrive/vimwiki',
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
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
" Makes markdown preview on file save and some other performance vs confort 
let g:instant_markdown_slow = 1
" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F5> :!open -a "Google Chrome" "%"<CR>'

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

" autocmd FileType make setlocal noexpandtab
