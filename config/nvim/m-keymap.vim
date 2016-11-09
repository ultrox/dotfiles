"Normalne stvari da ne poludis
"yank inner word
nnoremap <leader>yw yiww

" ,ow 'nnoremap sa onim u registeru 'overwrite word'
nnoremap <leader>ow "_diwhp

" ----------------------------------------------------------------------
" | Jednostavnija Okruzivanja sa Leaderom tpope/vim-surround           |
" ----------------------------------------------------------------------

" <leader># Okruzi rijec/selekciju #{ruby interpunkcija}
map <leader># ysiw#
vmap <leader># c#{<C-R>"}<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader>" Okruzi rijec/selekciju "quotes"
map <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader>' Okruzi rijec/selekciju "quotes"
map <leader>' ysiw'
vmap <leader>' c"<C-R>""<ESC>
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 " <leader>) or ,( Surround a word with (parens)
" The ( difference ) is in whether a space is put in
map <leader>( ysiw(
map <leader>) ysiw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader> [ Surorooound a word with [brackets]
map <leader>] ysiw]
map <leader>[ ysiw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader> { Okruzi rijec sa viticastom {braces}
map <leader>} ysiw}
map <leader>{ ysiw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [<leader> `] Okruzi sa tikom
map <leader>` ysiw`


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"//vim-surround end
"================================
"=> Mapings Bejbi
"================================
" Now using the middle finger of either hand you can type
" underscores with Alt-k or Alt-d, and add Shift
" to type dashes
imap <silent> <A-k> _
imap <silent> <A-d> _
imap <silent> <A-K> -
imap <silent> <A-D> -

" Change inside various enclosures with Alt-" and Alt-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <A-'> f'ci'
nnoremap <A-"> f"ci"
nnoremap <A-(> f(ci(
nnoremap <A-)> f)ci)
nnoremap <A-[> f[ci[
nnoremap <A-]> f]ci]

" I too like to live dangerously
" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_


" [tik je ' tu] Super - Favorit remap ever
" nnoremap ' `
" nnoremap ` '


"================================
"=> VimRc Reload / Edit / Source
"================================

"[<leader>vr ] Reload, edit and source vim config
nmap <leader>vr :so $MYVIMRC<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"======================================================================
"=> Search / Repace / Highlite
"======================================================================

" [<leader>hl] Clear search
noremap <BS> :set hlsearch! hlsearch?<cr>

" [<leader> * ] Search and replace the word under the cursor
nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" [<leader> / ]search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" Mislim da je ovo u fajlovima pretrazivanje

" bind \ (backward slash) to grep shortcut - bolje sa ack optimiziraniji za rad sa kodom
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


"======================================================================
" => Files and Windows
"======================================================================
" [<leader>W ] Sudo write


" Also map leader + s Save a files
map <leader>w :w<cr>
vmap <leader>s <Esc>:w gv


" Quickly close windows
nnoremap <leader>x :x<cr>
nnoremap <leader>X :q!<cr>

" Use Q to intelligently close a window
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" disable Ex mode =>>> Curently smart close
"noremap Q <NOP>
"======================================================================
" => Dealing with buffers
"======================================================================

" [<leader> + . ] switch between current and last buffer
nmap <leader>. <c-^>

" Traverse thrue the buffers - do this with pope
nnoremap <silent> <C-J> :bprev<CR>
nnoremap <silent> <C-K> :bnext<CR>
"======================================================================
" => Movment
"======================================================================

" Go to Line Code with Enter
nnoremap <CR> G
" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [jk] exit from insert / cmd mode
imap jk <Esc>
cmap jk <Esc>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz
nnoremap <c-i> <c-i>zz

"================================
"=> Others
"================================
" nmap <leader>l :set list!<cr>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [. ] Repeat with . in virtual mode
vnoremap . :normal .<cr>


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"done by plugin YankRing.vim
" let g:yankring_history_file = '.yankring-history'
" nnoremap ,yr :YRShow<CR>
" nnoremap C-y :YRShow<CR>


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" select text you just pasted
noremap gV `[v`]
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" EXPERIMENTAL - to sto testiram ovdje
"======================================================================
autocmd FileType javascript map <buffer> <A-k> }
autocmd FileType javascript map <buffer> <A-j> {

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

