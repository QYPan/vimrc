"begin open or update the vim, it will print the image
echom ">^.^<"

"not roll screen
set nowrap

"current line down
nnoremap - dd p

"change the word into upper in insert model
inoremap <c-u> <esc>viwU

"change the word into upper in normal model
nnoremap <c-u> <esc>viwU

"set leader
let mapleader = ","

"open the vim config
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"update the vim config
nnoremap <leader>sv :source $MYVIMRC<cr>

"my label
iabbrev ssig <cr>PQY<cr>QingYouPan1994@163.com

"add double quotes for a word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"add apostrophe for a word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"move to the begin of current line
nnoremap H 0
"move to the end of current line
nnoremap L $

"ignore the <esc> key
inoremap <esc> <nop>
"set the <esc> key
inoremap jk <esc>

