set nocompatible
set guicursor=
set relativenumber
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai 
set si
set nowrap 
set backspace=start,eol,indent
set path+=**

let mapleader = " "

runtime ./plug.vim
runtime ./colors/256_noir.vim
