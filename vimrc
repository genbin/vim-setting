syntax on
set number
set ruler
set nobackup
set noswapfile
set cmdheight=2
set laststatus=2
set ffs=mac,unix,dos

"set cursorline
"set cursorcolumn

" 根据后缀不同，tab为不同空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType php,c,java,perl,shell,bash,vim,ruby,cpp set tabstop=4
autocmd FileType php,c,java,perl,shell,bash,vim,ruby,cpp set shiftwidth=4
autocmd FileType php,c,java,perl,shell,bash,vim,ruby,cpp set softtabstop=4
autocmd FileType php,c,java,perl,shell,bash,vim,ruby,cpp set expandtab
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType python set noexpandtab
autocmd FileType javascript,html,css,xml set tabstop=2
autocmd FileType javascript,html,css,xml set shiftwidth=2
autocmd FileType javascript,html,css,xml set softtabstop=2
autocmd FileType javascript,html,css,xml set expandtab

set wrap
set showmatch
set nocompatible  
set undolevels=1000


" 编辑模式下：za,切换折叠状态；zo,打开折叠；zc,关闭折叠
set foldmethod=indent  
set foldlevelstart=99

set autoindent  
" set cindent
set smartindent

" 普通模式下关闭输入法
"set noimd

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
" 左侧树形结构
Bundle 'The-NERD-tree'
" 快捷键：,+cc / ,+cu
Bundle 'scrooloose/nerdcommenter'
Bundle 'crusoexia/vim-monokai'
Bundle 'altercation/vim-colors-solarized'
" 快捷键：^p
Bundle 'kien/ctrlp.vim'
" 快捷键：^y+,
Bundle 'mattn/emmet-vim'
Bundle 'mxw/vim-jsx'
" 快捷键：,+b
Bundle 'fholgado/minibufexpl.vim'
" 快捷键：,vv:搜索 ,vV:全词匹配; ,vo:打开选项单
Bundle 'EasyGrep'
" Tabularize 文本对其
Bundle 'godlygeek/tabular'
" 增强markdown
Bundle 'plasticboy/vim-markdown'

" EasyGrep 配置
let g:EasyGrepMode = 0   " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 1  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "lib,.git,node_modules,*.bak,*~,cscope.*,*.a,*.o,*.pyc,*.orig,bundle.js" 

" miniBufExplorer 配置
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

" 主题配色
if has('gui_running')
set guifont=Monaco:h13
set background=dark
set noanti
highlight Cursor guifg=gray guibg=red
"set cursorline
colorscheme solarized
let g:solarized_contrast="high"
let g:solarized_termcolors=256
endif

" http://blog.codepiano.com/pages/ctrlp-cn.light.html
" 禁用缓存
let g:ctrlp_use_caching = 1
" ctrlP 忽略
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|\.git$\|\.hg$\|\.svn$\|\.yardoc$\|\.dist$\|\.build$',
  \ 'file': '\v\.(exe|so|dll|dat|pyc)$'
  \ }

filetype plugin indent on
let g:mapleader=","

" 切换左侧树结构
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
" 隐藏特定文件
let NERDTreeIgnore=['\.vim$','\~$','\.pyc$']

" 避免必须保存修改才可以跳转buffer
"set hidden 

" buffer快速导航
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <leader>b :MBEToggle<CR>
" 查看buffers
nnoremap <Leader>l :ls<CR>
" 通过索引快速跳转
nnoremap <Leader># :1,100bd\|NERDTree<CR>


" 直接复制所选择文字到系统剪贴板
set clipboard=unnamed 
map <Leader>Y :w !pbcopy<CR><CR> 
map <Leader>P :r !pbpaste<CR><CR>


" Tabularize 文本对其
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>

" 修补蓝牙键盘k380的bug
" iterm2中自带map映射，也可以解决这类问题
map! § `
map § `
map! ± ~
map ± ~
