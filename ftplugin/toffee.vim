let s:cpo_save = &cpo
set cpo&vim

" this loads the matchit support for html
runtime! ftplugin/html.vim ftplugin/html*.vim ftplugin/html/*.vim

" matchit support
if exists("loaded_matchit") && exists("b:match_words")
  let b:match_words = b:match_words
    \ . ',{:},\[:\],(:)'
    \ . ',#{:}'
    \ . ',{##:##}'
    \ . ',{#:#}'
    \ . ',{\::\:}'
endif

let &cpo = s:cpo_save
unlet s:cpo_save
