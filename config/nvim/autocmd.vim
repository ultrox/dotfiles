" file type specific settings
augroup configgroup
    autocmd!

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc,.vimrc.local,init.vim,autocmd.vim,plugin_config.vim source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    " make quickfix windows take all the lower section of the screen
    " when there are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call functions#ApplyLocalSettings(expand('<afile>:p:h'))

		autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
		autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
		autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
		autocmd FileType js setlocal ts=4 sts=4 sw=4 expandtab
		autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab indentkeys-=*<return>
		autocmd FileType jsx  setlocal ts=4 sts=4 sw=4 noexpandtab indentkeys-=*<return>

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
