" Language:    Toffee
" Maintainer:  Lucas Chi <chi.lucas@gmail.com>
" URL:         http://github.com/lchi/vim-toffee
" License:     GPL v3

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
unlet! b:current_syntax

syn include @coffeeAll syntax/coffee.vim
syn include @htmlAll syntax/html.vim

syn region coffeeMode start=/{#/ms=e+1,hs=e+1 end=/#}/me=s-1,he=s-1
\  contains=@coffeeAll, htmlMode
syn region htmlMode start=/{:/ms=e+1,hs=e+1 end=/:}/ms=s-1,he=s-1
\  contains=@htmlAll contained

syn region toffeeBlockComment start=/{##/ end=/##}/

hi def link toffeeBlockComment Comment
