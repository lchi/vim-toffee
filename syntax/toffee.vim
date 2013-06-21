" Language:    Toffee
" Maintainer:  Lucas Chi <chi.lucas@gmail.com>
" URL:         http://github.com/lchi/vim-toffee
" License:     GPL v3

" TODO: #{} in attributes not highlighted

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim

unlet! b:current_syntax
syn include @coffeeAll syntax/coffee.vim
unlet! b:current_syntax
syn include @htmlAll syntax/html.vim

syn region toffeeInterpolation matchgroup=toffeeInterpDelim start=/#{/ end=/}/
\  contains=@coffeeAll containedin=@htmlAll
hi def link toffeeInterpDelim PreProc

syn region coffeeMode matchgroup=toffeeModeToggleDelim
\  start=/\(:}\|{#\)/ end=/\(#}\|{:\)/ contains=@coffeeAll
hi def link toffeeModeToggleDelim PreProc

syn region toffeeBlockComment start=/{##/ end=/##}/
hi def link toffeeBlockComment Comment

let b:current_syntax = "toffee"
