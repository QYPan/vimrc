" Vundle config ----- {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" Introduction ------- {{{
"
" 打开 vim 就会输出以下表情字符
echom ">^.^<"

" 标签，输入 ssig 就会转换
iabbrev ssig <cr>PQY<cr>qypan1994@163.com
" }}}

" Vimscript file settings ---------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Basic settings -------- {{{
"
" 设置黑底白字
hi Normal ctermbg=black ctermfg=white

" 打开基本语法高亮
syntax on

" 使用鼠标
set mouse=a

" 使用行号
set number

" 设置行号宽度
set numberwidth=4
set shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set autoindent

" 设置窗口大小，不是所有平台都有效
set lines=30 columns=130

" 设置背景状况，亮(light)，暗(dark)
set bg=dark

setlocal foldmethod=indent

" 开启单词翻译功能，需安装 sdcv；安装后在 vim 里按 ctrl+k 可翻译光标所在单词
set keywordprg=sdcv

" 开启 C 风格缩进
set cindent

" 当字符串长度超出窗口宽度时不换行
set nowrap

" 搜索字符串时高亮显示
set hlsearch incsearch

" 设置缓冲按键前缀
let mapleader = ","

" 设置本地缓冲按键前缀
let maplocalleader = "\\"
" }}}

" Mappings --------- {{{
"
" 把当前行跟下面一行互换
nnoremap - dd p

"change the word into upper in insert model
inoremap <c-u> <esc>viwU
"change the word into upper in normal model
nnoremap <c-u> <esc>viwU

"open the vim config
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"update the vim config
nnoremap <leader>sv :source $MYVIMRC<cr>

"add double quotes for a word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"add apostrophe for a word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"highlight the blank
nnoremap <leader>w :match ErrorMsg /\v\<space>/<cr>
"clear the match
nnoremap <leader>W :match none<cr>

"move to the begin of current line
nnoremap H 0
"move to the end of current line
nnoremap L $

"ignore the <esc> key in insert model
inoremap <esc> <nop>
"set the <esc> key
inoremap jk <esc>

"e.g: d( mean clear the word in ()
onoremap ( i(
"e.g: d{ mean clear the word in {}
onoremap { i{
" }}}

" FileType-Specific settings ------ {{{
augroup mygroup
    autocmd!
    "when open a new file, it wild create it and save
    autocmd BufNewFile * :write

    "before read or write a html file, adjustment format
    autocmd BufWritePre,BufRead *.html :normal gg=G

    "note a line accroding to the filetype
    autocmd FileType c nnoremap <buffer> <localleader>c I/*<space><esc>$a<space>*/<esc>

    "delete note
    autocmd FileType c nnoremap <buffer> <localleader>d 0xxx$xxx
augroup END
" }}}
