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
Plugin 'vimcdoc'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

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
"begin open or update the vim, it will print the image
echom ">^.^<"

"my label
iabbrev ssig <cr>PQY<cr>QingYouPan1994@163.com
" }}}

" Vimscript file settings ---------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Basic settings -------- {{{
set mouse=a
set number
set numberwidth=4
set shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set autoindent
set lines=30 columns=130
" indent for c
set cindent

"not roll screen
set nowrap

"set leader
let mapleader = ","
"set local leader
let maplocalleader = "\\"
" }}}

" Mappings --------- {{{
"current line down
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
