" autoload/markdown_links.vim

" Create Markdown links quickly
" Usage: In normal mode, go to the first letter of the word you want to convert
" to a link. Now type, ':Link 3105' => This will link the word and move the
" cursor to a position where you can paste the link into the buffer now.
"
" - Links are added at the end of the current buffer.
function! markdown_links#link(mode, ...) range
    silent exe "set paste"

    let l:link_name = a:0 >= 1 ? a:1 : "temp_link_name"

    if a:mode ==# "word"
        silent exe "normal! i[\<Esc>ea][" . l:link_name . "]\<Esc>"
    else
        silent exe "normal! `<i[\<Esc>`>la][" . l:link_name . "]\<Esc>"
    endif

    silent exe "normal! Go[" . l:link_name . "]:  \<Esc>"

    silent exe "set nopaste"
endfunction
