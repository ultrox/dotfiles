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
" => Airline Optionsw
"===========================================================
let g:airline#extensions#tabline#enabled=4 
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
"let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
"let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0


"===========================================================
" => Setting up DeoPlate
"===========================================================
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
	let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni',
\]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs'] " buffer 
"If you are using tern-for-vim this is recomended
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>


"===========================================================
" => Supertab Settings
"===========================================================

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" close preivew window when you are not using it
let g:SuperTabClosePreviewOnPopupClose = 1


"===========================================================
" => FZF & NerdTree
"===========================================================

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>\ :NERDTreeFind<cr>

let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

let g:fzf_layout = { 'down': '~25%' }

" Better command history with q:
command! CmdHist call fzf#vim#command_history({'down': '~25%'})
nnoremap q: :CmdHist<CR>

" Better search history shit I was looking with vim search
command! QHist call fzf#vim#search_history({'down': '~25%'})
nnoremap q/ :QHist<CR><Paste>
 " <C-p> or <C-t> to search files
 nnoremap <silent> <C-p> :FZF -m<cr>

nmap <silent> <leader>t :Buffers<cr>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
" Use fuzzy completion relative filepaths across directory
" imap <expr> <F1> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')
nnoremap <silent> <F1> :Buffers<cr>
nnoremap <silent> <F2> :History -m<cr>
nnoremap <silent> <F3> :FZF -m<cr>
command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})
"===========================================================
" => Others
"===========================================================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" MatchTagAlways 
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx' : 1,
    \}

nnoremap <leader>% :MtaJumpToOtherTag<cr>

" React jsx syntax
let g:jsx_ext_required = 0

" Auto closing tags plugin
 let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

 " --------------------------------
 "
 " Unsorted
 " " omnifuncs
"augroup omnifuncs
"  autocmd!
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end
"" tern
"if exists('g:plugs["tern_for_vim"]')
"  let g:tern_show_argument_hints = 'on_hold'
"  let g:tern_show_signature_in_pum = 1
"  autocmd FileType javascript setlocal omnifunc=tern#Complete
"endif
"
"" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
