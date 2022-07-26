lua require "lua-init"

command Q q
command W w
command WQ wq
command Wq wq
command QA qa

" remember last edit place
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Feature 'cs' Review-And-Replace while searching (or use vim7.4:cgn ){
" vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR> :<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gvomap s :normal vs<CR>
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
"}

" vim.g.vim_markdown_folding_disabled = 1

set statusline=
