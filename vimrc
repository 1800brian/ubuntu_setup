set background=dark
colorscheme slate

set noeb vb t_vb=  "kill the beep

set autochdir
set autoindent
"set tw=4
"set hlsearch
set incsearch
set splitbelow "default sp to bottom instead of top

set path+=**
set wildmenu

set nocompatible

syntax on
filetype on
filetype plugin on
filetype indent on

set number
set nowrap
set ruler
set tags=tags;/
set ignorecase
set laststatus=2

set foldmethod=indent
set foldlevel=99

set statusline=%F%m%r%h%w\ [%l/%L\ (%p%%)]

let g:netrw_sizestyle="h"
let mapleader="\<space>" "custom leader is space bar

map <c-.> g]
map <c-,> <c-t>
map <a-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

nnoremap <leader><SPACE> :set cursorline!<CR>

autocmd! bufwritepost .vimrc source %

" Jump to lines with the same indentation (forward and back)
nnoremap <leader>j :let @@=<C-R><C-W><CR>viwp
nnoremap <leader>k :let @@=printf('0x%X', <C-R><C-W>)<CR>viwp

nnoremap <leader>d : bd!<CR> " delete current buffer forcefully

" Nifty Python Stuff
nnoremap <leader>l :make<BAR>copen<CR><CR>
nnoremap <leader>R :!python3<CR> "execute visual selection and replace with result
nnoremap <leader>R :!python3 %<CR> "execute current buffer
nnoremap <leader>E : new temp.txt <BAR> r!python3 #<CR> " execute current buffer and put in temp buffer below
nnoremap <leader>T : new temp.txt <BAR> r!python3 #<CR> " execute current buffer and put in new buffer below
nnoremap <leader>T : new temp.txt <BAR> r!python3 -m py_compile #<CR> " syntax check file

