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
