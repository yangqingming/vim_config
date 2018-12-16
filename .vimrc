set nocompatible               " be iMproved
filetype off                   " required!
syntax on
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" " required!
Plugin 'tpope/vim-pathogen'
Plugin 'VundleVim/Vundle.vim'
Bundle 'bling/vim-airline' 
Bundle 'L9'
Bundle 'minibufexpl.vim'
Bundle 'grep.vim' 
Bundle 'EasyMotion'
Bundle 'code_complete'
Bundle 'Valloric/YouCompleteMe' 
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic' 
Bundle 'tomasr/molokai'
Bundle 'kien/rainbow_parentheses.vim' 
Bundle 'Yggdroot/indentLine' 
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-expand-region'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'kien/ctrlp.vim'
Bundle 'rkulla/pydiction'
Bundle 'scrooloose/nerdcommenter'
Plugin 'wincent/command-t' 
"Bundle 'TagHighlight'
"ll of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
"   "
"   " Brief help  -- 此处后面都是vundle的使用命令
"   " :BundleList          - list configured bundles
"   " :BundleInstall(!)    - install(update) bundles
"   " :BundleSearch(!) foo - search(or refresh cache first) for foo
"   " :BundleClean(!)      - confirm(or auto-approve) removal of unused
"   bundles
"   "
"   " see :h vundle for more details or wiki for 
"   " NOTE: comments after Bundle command are not allowed..

"**************************************************************************************************

"Bundle 'EasyMotion'
let g:EasyMotion_leader_key = 'f'		

"Bundle 'Valloric/YouCompleteMe' 
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tag_files = 1

"Bundle 'tomasr/molokai'
colorscheme molokai

"Bundle 'kien/rainbow_parentheses.vim' 
"括号高亮
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
"let g:rbpt_max = 5
"let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle       " Toggle it on/off
"au Syntax * RainbowParenthesesLoadRound    " (), the default when toggling
"au Syntax * RainbowParenthesesLoadSquare   " []
"au Syntax * RainbowParenthesesLoadBraces   " {}
"au Syntax * RainbowParenthesesLoadChevrons " <>

"Bundle 'Yggdroot/indentLine' 
"设置对齐线
let g:indent_guides_enable_on_vim_startup = 0
"*************************************************
"设置状态栏
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
"状态栏设置
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8 "设置编码
set showcmd "显示输入命令
set ruler

"set cursorline "突出显示当前行
"Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
set textwidth=1000 "一行显示文字
set nu "显示行号
set cursorline "突出显示行
hi CursorLine cterm=NONE ctermbg=Black
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=Black 
"hi Cursor  ctermfg=red  ctermbg=red
"共享剪贴板  
set clipboard+=unnamed
set autoread "文件被改动时自动载入
set autowrite "自动保存
"禁止生成临时文件
set nobackup
set noswapfile
"tags 设置
set tags+=/usr/src/linux-headers-3.16.0-29/tags
set tags+=/home/ming/.vim/systags
set tags+=tags

"不置换剪贴板
xnoremap p pgvy
vmap <C-c> "+y
map <C-v> <esc>"+p
imap <C-v> <esc>"+pi
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> "生成ctags

" 设置NerdTree
"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

let g:pydiction_location = '~/.vim/bundle/pydiction'
let g:pydiction_menu_height = 3
