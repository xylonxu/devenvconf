set nocompatible
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'Valloric/ListToggle'
Plugin 'fugitive.vim'
"""""""""""" status bar """""""""""""""""""""
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'

"""""""""""" file system manage """""""""""""
Plugin 'The-NERD-tree'
Plugin 'Yggdroot/LeaderF'

"""""""""""" tag """""""""""""""""""""""""""""
Plugin 'Tagbar'

""""""""""" theme conf """""""""""""""""""""""
Plugin 'Solarized'

""""""""""" code tool """""""""""""""""""""""
Plugin 'joonty/vdebug.git'
Plugin 'scrooloose/nerdcommenter'

"""""""""""""" code auto complete config  """"""""""""""""""
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'surround.vim'
Plugin 'shawncplus/phpcomplete.vim'
" quote complete
Plugin 'Raimondi/delimitMate'
" html/xml tag complete
Plugin 'docunext/closetag.vim'
Plugin 'snippets.vim'
"Plugin 'neosnippet'
"Plugin 'snipmate'

" python complete
Plugin 'davidhalter/jedi'
Plugin 'pylint.vim'

"""""""""""""" quick edit """"""""""""""""""""""""""""
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
" remove whitespace end of line
Plugin 'bronson/vim-trailing-whitespace'
" quickly formatter
Plugin 'junegunn/vim-easy-align'
"""""""""""""" for code docsets """"""""""""""""""""""""""""
Plugin 'plasticboy/vim-markdown'

"""""""""""""" for file type """""""""""""""""""""""""""""""
Plugin 'c.vim'
Plugin 'xml.vim'
Plugin 'JSON.vim'

call vundle#end()


filetype plugin indent on

" detect file type
filetype on
filetype plugin on
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,cp936
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"set smartindent " 智能对齐方式
set softtabstop=4 " 设置软制表符的宽度
set cindent " 使用 C/C++ 语言的自动缩进方式
set hlsearch
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
""设置C/C++语言的具体缩进方式
"set backspace=2 " 设置退格键可用
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号
"set previewwindow " 标识预览窗口
set history=50 " set command history to 50 "历史记录50条
"set vb
"set ruler
set shiftwidth=4

set list
set listchars=tab:>.,trail:.
set et

set autoindent "" 自动对齐,继承前一行的缩进方式，特别适用于多行注释
set smartindent "开启新行时使用智能自动缩进
set cindent   "c风格程序缩进

au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

filetype plugin indent on
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" keyboard shortcuts
let mapleader = ','
let g:mapleader = ','
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>tb :TagbarToggle<CR>
nmap  <leader><Space> :FixWhitespace<CR>

""""""""""""""""""""""""""""""" for ycm """""""""""""""""""""""""""""""""""""
nmap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>gl :YcmCompleter GoToDeclaration<CR>
nmap <leader>gf :YcmCompleter GoToDefinition<CR>
nmap <leader>yd :YcmDiags<CR>
nmap <leader>yq :YcmForceCompileAndDiagnostics<CR>

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {'php':1}
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_confirm_extra_conf = 0

"""""""""""""""  disable syntasitc for python, use pylint instead
let g:syntasitc_ignore_files=[".*\.py$"]

""""""""""""""" vim-easy-align """"""""""""""""""""""""""""
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
    let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

""""""""""""""""""" vim-easy-motion """""""""""""""""""""""
let g:EasyMotion_smartcase = 1
" let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)

""""""""""""""" for omnifunc """""""""""""""""""""""""""""""""""""
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"neocomplcache配置
let g:neocomplcache_enable_at_startup = 1 "启动neocomplcache


"==========================================
"" others 其它设置
"==========================================
"autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
"
" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu


"==========================================
"" HotKey Settings  自定义快捷键设置
"==========================================
" 主要按键重定义

" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" tab 操作
" TODO: ctrl + n 变成切换tab的方法
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim
"map <C-2> 2gt
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
" TODO: 配置成功这里, 切换更方便, 两个键
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Toggles between the active and last active tab "
" The first tab is always 1 "
let g:last_active_tab = 1
" nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
" nnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
" vnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
vnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()

" select all
map <Leader>sa ggVG"

" select block
nnoremap <leader>v V`}

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" kj 替换 Esc
inoremap kj <Esc>
