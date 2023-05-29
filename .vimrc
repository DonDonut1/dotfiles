"VIM CONFIG

"RUNTIME FILE
runtime! archlinux.vim

"SYNTAX HIGHLIGHTING
:filetype plugin on
:syntax on

"MOUSE SUPPORT
set mouse=a

"LINE NUMBERS
:set number

"STATUSBAR
:set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

"VIM COMPATIBILITY
:set nocompatible

"WRAP TEXT THAT EXTENDS BEYOND THE SCREEN LENGTH
:set wrap

"ENCODING
:set encoding=utf-8
