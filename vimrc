set nu!
syntax on
set cmdheight=2
set laststatus=2
set nobackup
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
set nocompatible  
set undolevels=1000
set foldmethod=indent  
set foldlevelstart=99
set showmatch
set autoindent  
set cindent  
set smartindent

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'The-NERD-tree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'crusoexia/vim-monokai'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'mxw/vim-jsx'
Bundle 'altercation/vim-colors-solarized'

set guifont=Monaco:h12
set background=dark
colorscheme solarized

filetype plugin indent on
let g:mapleader=","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
