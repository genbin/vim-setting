set nu!
syntax on
set cmdheight=2
set laststatus=2
set nobackup

"set cursorline
"set cursorcolumn

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set autoindent
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set shiftwidth=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set tabstop=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set softtabstop=4
autocmd FileType javascript,html,css,xml set autoindent
autocmd FileType javascript,html,css,xml set shiftwidth=2
autocmd FileType javascript,html,css,xml set tabstop=2
autocmd FileType javascript,html,css,xml set softtabstop=2

set wrap
set showmatch
set nocompatible  
set undolevels=1000

set foldmethod=indent  
set foldlevelstart=99

set autoindent  
set cindent
set smartindent

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
Bundle 'EasyGrep'

" miniBufExplorer 配置
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

" EasyGrep 配置
let g:EasyGrepMode = 0    " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

" 主题配色
set guifont=Monaco:h12
set background=dark
colorscheme solarized
let g:solarized_contrast="high"
let g:solarized_termcolors=256

" ctrlP 忽略
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|\.git$\|\.hg$\|\.svn$\|\.yardoc$\|\.dist$\|\.build$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

filetype plugin indent on
let g:mapleader=","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" 避免必须保存修改才可以跳转buffer
"set hidden 

" buffer快速导航
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <leader>b :MBEToggle<CR>
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

set clipboard=unnamed 
map <Leader>Y :w !pbcopy<CR><CR> 
map <Leader>P :r !pbpaste<CR><CR>

" 修补蓝牙键盘k380的bug
map! § `
map § `
map! ± ~
map ± ~
