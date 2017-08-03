"execute pathogen#infect()
syntax on
filetype plugin on

"{一般设置
set fileencodings=utf-8,gbk  
set ambiwidth=double

set smartindent  
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set hls
set number

"{折叠代码
    set foldmethod=indent
    set foldlevel=99
    nnoremap <space> za
"}


"{光标重回上次退出位置
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif

"}

"{
"python代码缩进
au BufNewFile,BufRead *.py
\set tabstop=4
\set softtabstop=4
\set shiftwidth=4
\set textwidth=79
\set expandtab
\set autoindent
\set fileformat=unix
"}
"{窗口快捷键映射
"split navigations
nnoremap \<C-J\> \<C-W\>\<C-J\>
nnoremap \<C-K\> \<C-W\>\<C-K\>
nnoremap \<C-L\> \<C-W\>\<C-L\>
nnoremap \<C-H\> \<C-W\>\<C-H\>
"}
"{支持python虚拟环境
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
"}

"{
    set nocompatible " be iMproved

    filetype off " required! /** 从这行开始，vimrc配置 **/

    set rtp+=/root/.vim/bundle/vundle/

    call vundle#rc()

      

    "let Vundle manage Vundle

    " required!

    Bundle 'gmarik/vundle'

    " My Bundles here: /* 插件配置格式 */

    "BundleInstall

    " original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'honza/vim-snippets'
    Bundle 'jonathanfilip/lucius'
    Bundle 'tomasr/molokai'
    Bundle 'DoxygenToolkit.vim'
    Bundle 'a.vim'
    "Bundle 'c.vim'
    Bundle 'The-NERD-tree'
    Bundle 'The-NERD-Commenter'
    Bundle 'vim-airline'
    Bundle 'ctrlp.vim'
    Bundle 'unite.vim'
    Bundle 'ack.vim'
    Bundle 'vim-scripts/indentpython.vim'
    Bundle 'scrooloose/syntastic'
    Bundle 'nvie/vim-flake8'
    "Bundle 'Lokaltog/vim-powerline'
    "Bundle 'Color-Sampler-Pack'
    "Bundle 'tpope/vim-fugitive'

    "Bundle 'Lokaltog/vim-easymotion'

    "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

    "Bundle 'tpope/vim-rails.git'

    " vim-scripts repos （vim-scripts仓库里的，按下面格式填写）

    "Bundle 'L9'

    "Bundle 'FuzzyFinder'
    "
    "" non github repos （非上面两种情况的，按下面格式填写）
    "
    "Bundle 'git://git.wincent.com/command-t.git'
    "
    "" ...

     filetype plugin indent on " required! /** vimrc文件配置结束 **/
"}



"{taglist
"let Tlist_Auto_Highlight_Tag=1  
"let Tlist_Auto_Open=1  
"let Tlist_Auto_Update=1  
"let Tlist_Display_Tag_Scope=1  
"let Tlist_Exit_OnlyWindow=1  
"let Tlist_Enable_Dold_Column=1  
"let Tlist_File_Fold_Auto_Close=1  
"let Tlist_Show_One_File=1  
"let Tlist_Use_Right_Window=1  
"let Tlist_Use_SingleClick=1  
"nnoremap <silent> <F8> :TlistToggle<CR>
"}



let mapleader = ","
let g:mapleader = ","
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType python setlocal completeopt-=preview
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  
   
      
let g:pydiction_location='/root/.vim/complete-dict'  


"{jedi bundle
    let g:jedi#auto_initialization = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#use_tabs_not_buffers = 1
    let g:jedi#use_splits_not_buffers = "left"
    let g:jedi#popup_on_dot = 0
    let g:jedi#popup_select_first = 0
    let g:jedi#show_call_signatures = "1"
    let g:jedi#goto_command = "<leader>d"
    let g:jedi#goto_assignments_command = "<leader>g"
    let g:jedi#goto_definitions_command = ""
    let g:jedi#documentation_command = "K" 
    let g:jedi#usages_command = "<leader>n"
    let g:jedi#completions_command = "<C-Space>"
    let g:jedi#rename_command = "<leader>r"
    let g:jedi#completions_enabled = 0 

"}
"{YouCompleteMe
    let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/third_party/ycmd/ycmd/tests/clang/testdata/client_data/'  "配置默认的ycm_extra_conf.py
    let g:ycm_error_symbol = '>>'
    let g:ycm_warning_symbol = '>*'
    nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
    nmap <F4> :YcmDiags<CR>
    "打开vim时不再询问是否加载ycm_extra_conf.py配置
    let g:ycm_confirm_extra_conf=1
    "使用ctags生成的tags文件
    let g:ycm_collect_identifiers_from_tag_files = 1 
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
      project_base_dir = os.environ['VIRTUAL_ENV']
      activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
      execfile(activate_this, dict(__file__=activate_this))
EOF
"}
"
"{界面设置
colorscheme desert
"colorscheme molokai

"}
"{DoxygenToolkit
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------"
let g:DoxygenToolkit_commentType = "C"
let g:DoxygenToolkit_briefTag_pre="@brief  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_authorTag="@author  "
let g:DoxygenToolkit_dateTag="@date "
let g:DoxygenToolkit_versionTag="@version "
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
"}
"{
"a.vim使用说明：
" 头/源文件切换命令
":A 头文件／源文件切换
":AS 分割窗后并切换头/源文件(切割为上下两个窗口)
":AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
":AT 新建Vim标签式窗口后切换
":AN 在多个匹配文件间循环切换
" 将光标所在处单词作为文件名打开
":IH 切换至光标所在文件
":IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
":IHV 垂直分割窗口后切换
":IHT
"新建标签式窗口后切换
":IHN
"在多个匹配文件间循环切换
"快捷键操作
"<Leader>ih
"切换至光标所在文件*
"<Leader>is
"切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
"<Leader>ihn
"在多个匹配文件间循环切换
"}
"{The-NERD-tree
"let mapleader=","
nmap <leader>t :NERDTree<cr>
"tab切换
"nnoremap <leader>t gt  
nnoremap <leader>r gT
"}
"{Lokaltog/vim-powerline
set laststatus=2
let g:Powerline_symbols='unicode'
"}
"{python语法高亮
let python_highlight_all=1
syntax on
"}
"{unite
nnoremap <leader>f :Unite file<cr>
"nnoremap <leader>f :Unite -start-insert file
"}
"let g:molokai_original = 1
set t_Co=256
set background=dark
colorscheme molokai
set grepprg=ack-grep
inoremap jk <esc>
"编辑vimrc文件
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"重读vimrc文件
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>aa :Dox<cr>
"选中一个单词，添加双引号
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
