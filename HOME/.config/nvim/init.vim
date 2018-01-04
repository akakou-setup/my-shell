set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden

set number
set virtualedit=onemore
set autoindent
set smartindent
set showmatch

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set ruler
set nowrap
"set paste

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/akakou/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/akakou/.cache/dein')
  call dein#begin('/home/akakou/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/akakou/.cache/dein/repos/github.com/Shougo/dein.vim')

 " Toml's file directories
 let s:toml_dir  = $HOME . '/.config/nvim/dein/toml' 
 let s:toml      = s:toml_dir . '/dein.toml'
 let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

 " Read Toml files and cached
 call dein#load_toml(s:toml,      {'lazy': 0})
 call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

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


colorscheme molokai

syntax on
set t_Co=256
set termguicolors
set background=dark
set cursorline

let g:deoplete#enable_at_startup = 1
"set clipboard=unnamed,autoselect

