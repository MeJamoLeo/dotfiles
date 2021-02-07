"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/reo/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/reo/.cache/dein')
  call dein#begin('/Users/reo/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/reo/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#load_toml('~/dein.toml')
  call dein#add('neoclide/coc.nvim', { 'merged': 0 })

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



if filereadable(expand("~/.myvimrc"))
    source ~/.myvimrc
endif

