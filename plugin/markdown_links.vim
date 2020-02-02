" plugin/markdown_links.vim

au FileType markdown command! -nargs=* Linkw call markdown_links#link("word", <f-args>)
au FileType markdown command! -nargs=* -range Link call markdown_links#link("visual", <f-args>)

