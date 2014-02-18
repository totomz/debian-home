set nocompatible

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
hi Comment ctermfg=Yellow guifg=LightBlue

" Who doesn't like autoindent?
set autoindent
"
" " Spaces are better than a tab character
set expandtab
set smarttab
"
" " Who wants an 8 character tab?  Not me!
set shiftwidth=4
set softtabstop=4

" Enable mouse support in console
set mouse=a

" Incremental searching is sexy
set incsearch
"
" " Highlight things that we find with the search
set hlsearch

" Line numbers
set number