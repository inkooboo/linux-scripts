syntax on

" ------------------
"  global settings
" ------------------
"set mouse=a
"set number
"set foldcolumn=1
set nobackup
set noswapfile

set history=500
set nocompatible
set ruler
set showcmd

" netrw plugin
let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_preview = 1

" ---------------------------
"   tabs and indent settings
" ---------------------------
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smartindent
set tabpagemax=50

" delete space on the endline when saving
autocmd BufWritePre *.h,*.hpp,*.cpp,*.py  :%s/\s\+$//e

"open netrw on empty buffer
autocmd VimEnter * :if argc() is 0 | Explore | endif

" ------------------
"        color
" ------------------

" color colorscheme_template
set t_Co=256
color jellybeans


:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '\(\w\|)\|]\)\s*\(=\|==\|!=\|+\|\-\|+=\|\-=\|<=\|>=\||\|||\|&&\)\w'
:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '\(\w\|)\|]\)\(=\|==\|!=\|+\|\-\|+=\|\-=\|<=\|>=\||\|||\|&&\)\s\+\w'
:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '[;,]\w'
:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '\S\s\+[;,]'

:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '{\s*}'
:au BufRead,BufNewFile *.cpp,*.h syntax match ErrorMsg '\(=\|+\-\||\|&&\)$'


set nohlsearch
set incsearch
set showmatch

" -----------------
"     hotkeys
" -----------------

map <F4> :A <CR>
set pastetoggle=<F5>

" user commands
command Q :qa
command WQ :wqa

" comment block
vnoremap # :s/^/\/\//<cr>
vnoremap $ :s/^\/\///<cr>


