set nocompatible

set number
set ruler
set hlsearch
set splitright
set splitbelow
syntax on

let mapleader = ","

call pathogen#infect()
call pathogen#helptags()
filetype off
syntax on
filetype plugin indent on

set directory=~/.vim/sessions/

" tabs -> spaces
" mainly for Ruby
set nowrap
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" turn mouse on
set mouse=a
 
" keys remapping
nmap <leader>s :source ~/.vimrc
nmap <leader>v :e ~/.vimrc
nmap <leader>c :close<CR>
nnoremap <F2><F2> :vsplit<CR>
noremap <Space> <PageDown>
noremap - <PageUp>

" COLOR CONFIG 
set t_Co=256
colorscheme mustang 
" Solarized Theme Configuration
syntax enable
set background=dark
" colorscheme solarized
" call togglebg#map("<F5>")

" Different languages settings
autocmd FileType ColdFusion setlocal ts=4 sts=4 sw=4 expandtab
" remove trailing whitespace upon saving
autocmd FileType ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Font
"set gfn=DejaVuSansMono:h16
set gfn=Menlo:h14

" BufSurf settings
nmap <leader>b :BufSurfBack<CR>
nmap <leader>f :BufSurfForward<CR>

