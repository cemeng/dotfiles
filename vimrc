set nocompatible

set number
set ruler
set hlsearch
set splitright
set splitbelow
set autoread

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

nnoremap <CR> :nohlsearch<CR>/<BS>

" Move lines up and down
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" COLOR CONFIG
set t_Co=256
" Solarized Theme Configuration
syntax enable
set background=dark
" colorscheme solarized
colorscheme mustang

" Different languages settings
autocmd FileType ColdFusion setlocal ts=4 sts=4 sw=4 expandtab
" remove trailing whitespace upon saving
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Font
" Good fonts, 3rd party: Inconsolata, DejaVuSansMono
" System font: Monaco
set gfn=Inconsolata:h17

" BufSurf settings
nmap <leader>b :BufSurfBack<CR>
nmap <leader>f :BufSurfForward<CR>

" Randomize colorscheme everytime I open vim
let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n")
exe 'so ' . mycolors[localtime() % len(mycolors)]
unlet mycolors
