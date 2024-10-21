" Vim syntax file
" Language: Quantum Espresso
" Maintainer: Leandro Seixas Rocha <seixasle@gmail.com>, Katsuhiro Arimoto <75106395+KatsuhiroArimoto@users.noreply.github.com>
" Last Change: 2024 Oct 21

if exists('b:current_syntax')
    finish
endif

" Comment
syntax keyword espressoTODO contained TODO FIXME XXX NOTE
syntax match espressoComment '!.*$'

" Integer with +,- or nothing in front
syntax match espressoNumber '\d\+'
syntax match espressoNumber '[-+]\d\+'

" Floating number
syntax match espressoNumber '\d\+.\d*'
syntax match espressoNumber '[-+]\d\+.\d*'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'

" String
syntax region espressoString start="'" end="'"

" Boolean value (.true. /.false.)
syntax match espressoBoolean '\.[tT][rR][uU][eE]\.'
syntax match espressoBoolean '\.[fF][aA][lL][sS][eE]\.'

runtime! **/quantum_espresso-vim/syntax/pw.vim
runtime! **/quantum_espresso-vim/syntax/pw2wannier90.vim
runtime! **/quantum_espresso-vim/syntax/bands.vim

syntax region espressoNamelist start='&' end='/' fold transparent contains=espressoNumber,espressoKey,espressoString,espressoBoolean,espressoComment

let b:current_syntax = 'espresso'

hi def link espressoNamelist    PreProc
hi def link espressoKey         Statement
hi def link espressoNumber      Constant
hi def link espressoString      Type
hi def link espressoBoolean     Special
hi def link espressoComment     Comment
