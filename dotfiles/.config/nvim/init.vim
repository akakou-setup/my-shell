" config
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

set tabstop=4
let &shiftwidth=$TAB

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set ruler
set nowrap

set t_Co=256
set termguicolors
set background=dark
set cursorline

syntax enable
syntax on

packadd termdebug 
set mouse=a
let g:termdebug_wide = 163

if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('tomasr/molokai')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neocomplcache')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#end()
  call dein#save_state()
endif


filetype plugin indent on
syntax enable

" molokai
colorscheme molokai


" snap
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neocomplcache_auto_completion_start_length = 2


" nardtree
nnoremap st :<C-u>tabnew<CR>
map ss :NERDTreeToggle<CR>
