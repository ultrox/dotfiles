" cmap w!! w !sudo tee % >/dev/null
"  
inoremap <c-o> <C-x><C-o>

" map <F4> :cd %:h<CR>
nmap <bs> :<c-u>TmuxNavigateLeft<cr>

"Fixing command line in vim
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>

:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>

"Giving much more power to dot command(cn cp, bp,bn)
nnoremap <M-.> @:

fu! RelativePathString(file)
    if strlen(a:file) == 0
        retu "[No Name]"
    en
    let common = getcwd()
    let result = ""
    while substitute(a:file, common, '', '') ==# a:file
        let common = fnamemodify(common, ':h')
        let result = ".." . (empty(result) ? '' : '/' . result)
    endw
    let forward = substitute(a:file, common, '', '')
    if !empty(result) && !empty(forward)
        retu result . forward
    elsei !empty(forward)
        retu forward[1:]
    en
endf

" ----------------------------------------------------------------------
" | Jednostavnija Okruzivanja sa Leaderom tpope/vim-surround           |
" ----------------------------------------------------------------------

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader>" Okruzi rijec/selekciju "quotes"
map <leader>" siw"
vmap <leader>" c"<C-R>""<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader>' Okruzi rijec/selekciju "quotes"
map <leader>' siw'
vmap <leader>' c"<C-R>""<ESC>
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader>) or ,( Surround a word with (parens) The ( difference ) is in whether a space is put in
map <leader>( siw(
map <leader>) siw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader> [ Surorooound a word with [brackets]
map <leader>] siw]
map <leader>[ siw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" <leader> { (Okruzi) rijec sa viticastom {braces}
map <leader>} siw}
map <leader>{ siw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [<leader> `] Okruzi sa tikom
map <leader>` siw`


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
" trying to use this more
noremap H ^
noremap L $
vnoremap L g_


" [tik je ' tu] Super - Favorit remap ever - not needed when remaping esc to ` 
" nnoremap ' `
" nnoremap ` '

" create/open file in current folder
map <Leader>ee :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
"================================
"=> VimRc Reload / Edit / Source
"================================

"[<leader>vr ] Reload, edit and source vim config
nmap <leader>vr :so $MYVIMRC<CR>

nmap <leader>et :e ~/dotfiles/tmux/tmux.conf.symlink<CR>
nmap <leader>ea :e ~/dotfiles/aliases.zsh<CR>
nmap <Leader>ew <Plug>VimwikiIndex
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>et :e /Users/ultrox/.tmux.conf <CR>
nmap <leader>ea :e /Users/ultrox/dotfiles/aliases.zsh<CR>
nmap <leader>es :UltiSnipsEdit<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"======================================================================
"=> Search / Repace / Highlite / Prebaci u novi VIM
"======================================================================

noremap <BS> :noh<cr>
" nnoremap <Leader>i i![<C-R>+](/Users/ultrox/Google%20Drive/LearnNodeGifs/<C-R>+)<Enter><esc>
nnoremap <Leader>i i![<C-R>+](/Users/ultrox/Google%20Drive/ReduxSagaForm/<C-R>+)<Enter><esc>
noremap <F5> :!open -a "Google Chrome" '%'<CR>
" map <Leader>ee :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>

" [<leader> * ] Search and replace the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//<Left>
vmap <Leader>s "py :%s/\<<C-r>p\>//<Left>

" bind \ (backward slash) to grep shortcut - bolje sa ack optimiziraniji za rad sa kodom
" 
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
" vmap \ "py :Ag/\<<C-r>p
vmap \ "py :Ag <C-r>p<CR>
" vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" nnoremap <expr> <Leader>ss ':%s/\<'.expand('<cword>').'\>/<&>/g<CR>'

" [<leader> / ] search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" Mislim da je ovo u fajlovima pretrazivanje


" bind K to grep word under cursor
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


"======================================================================
" => Files and Windows
"======================================================================
" I'm using tinykeymap for controloing window subomde - awesome

" [<leader>W ] Sudo write
" Resizing windows
nnoremap <C-up> <C-W>+
nnoremap <C-down> <C-W>-
nnoremap <C-left> <C-W><
nnoremap <C-right> <C-W>>

" Also map leader + s Save a files
map <leader>w :w<cr>


" Quickly close windows
nnoremap <leader>x :x<cr>
nnoremap <leader>X :q!<cr>

" nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" disable Ex mode =>>> Curently smart close
"noremap Q <NOP>
"======================================================================
" => Dealing with buffers
"======================================================================

" [<leader> + . ] switch between current and last buffer
nmap <leader>. <c-^>

" nnoremap <C-c> :bp\|bd #<CR>
" nnoremap <leader> q :bp\|bd #<CR>
" nnoremap <leader>q :bw!<cr>
" Traverse thrue the buffers - do this with pope
nnoremap <silent> <f8> :bprev<CR>
nnoremap <silent> <f9> :bprev<CR>
" nnoremap <silent> <c-k> vbnext<CR>

" nnoremap <down> <c-w>j
" nnoremap <up> <c-w>k
" nnoremap <left> <c-w>h
" nnoremap <right> <c-w>l
"======================================================================
" => Movment
"======================================================================

" Go to Line Code with Enter
" nnoremap <CR> G This fucked up a lot of things 
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
" nnoremap <silent> <F8> :setlocal filetype=php<CR>
" nnoremap <silent> <F9> :setlocal filetype=html<CR>

autocmd FileType javascript imap <buffer> <A-u> }
autocmd FileType javascript imap <buffer> <A-i> {
" autocmd FileType javascript inoremap ;; <END>;
" autocmd FileType javascript inoremap ,, <END>,
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" INDENTING
nnoremap <leader>f mzgg=G`z

inoremap jk <esc>
 
"EXPERIMENTAL 

nnoremap <leader>c :bp \| bd # <CR>
nnoremap <leader>q :bd <CR>

:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
" :tnoremap <Esc> <C-\><C-n>

" Use | and _ to split windows (while preserving original behaviour of [count]bar and [count]_).
" nnoremap <expr><silent> <Bar> v:count == 0 ? "<C-W>v<C-W><Right>" : ":<C-U>normal! 0".v:count."<Bar><CR>"
" nnoremap <expr><silent> _     v:count == 0 ? "<C-W>s<C-W><Down>"  : ":<C-U>normal! ".v:count."_<CR>"
