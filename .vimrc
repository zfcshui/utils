call plug#begin('~/.vim/plugins')
Plug 'altercation/vim-colors-solarized'
call plug#end()
set nocompatible
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
set autoindent
set tabstop=4
set expandtab
set number
set cursorline
set wrap
set linebreak
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
	return "\<Right>"
    else 
	return a:char
    endif
endfunction

