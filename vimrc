set nu!
syntax on
set cmdheight=2
set laststatus=2
set nobackup

"set cursorline
"set cursorcolumn

set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set wrap
set showmatch
set nocompatible  
set undolevels=1000

set foldmethod=indent  
set foldlevelstart=99

set autoindent  
" set cindent
" set smartindent

" 普通模式下关闭输入法
"set noimd

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
Bundle 'fholgado/minibufexpl.vim'

" miniBufExplorer 配置
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

" 主题配色
set guifont=Monaco:h12
set background=dark
colorscheme solarized
let g:solarized_contrast="high"
let g:solarized_termcolors=256


filetype plugin indent on
let g:mapleader=","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

set hidden " 避免必须保存修改才可以跳转buffer

" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
" 查看buffers
nnoremap <Leader>l :ls<CR>
" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
