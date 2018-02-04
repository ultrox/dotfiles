" file type specific settings
function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction

augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

augroup configgroup
    autocmd!

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='

    autocmd BufWritePost init.vim source %
		autocmd BufWritePost autocmd.vim source %
		autocmd BufWritePost m-func.vim source %
		autocmd BufWritePost m-keymap.vim source % 
		autocmd BufWritePost plugin_config.vim source %
		autocmd BufWritePost plugins.vim source %

    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    " make quickfix windows take all the lower section of the screen
    " when there are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call functions#ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd FileType js setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType jsx  setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=*<return>

		" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
		autocmd FileType make setlocal ts=8 sts=8 sw=8 expandtab
		autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
		autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=*<return>
		autocmd FileType pug setlocal ts=2 sts=2 sw=2 expandtab

		autocmd FileType markdown,textile setlocal textwidth=80 wrapmargin=0 wrap spell
		autocmd FileType crontab setlocal nobackup nowritebackup
    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

		" autocmd! BufWritePost,BufEnter * Neomake
augroup END

augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
	augroup END
" autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
" autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
