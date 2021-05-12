"/1c5a/1c5a/1c5a init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set number
set cursorline
set list
hi clear CursorLine
set nocompatible
syntax enable
set clipboard+=unnamed
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
" set expandtab
set shell=zsh
set backupskip=/tmp/*,/private/tmp/*
au FileType vim setlocal foldmethod=marker

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype indent on
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

autocmd TermOpen * startinsert
if has('nvim')
    command! -nargs=* Term split | terminal <args>
    command! -nargs=* Termv vsplit | terminal <args>
endif

source ~/.vimrc.maps
source ~/.vimrc.funcs
