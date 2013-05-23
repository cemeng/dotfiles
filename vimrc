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
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>c :close<CR>

" cancel search highlight
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
colorscheme Tomorrow-Night-Bright

" remove trailing whitespace upon saving
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Font
" Good fonts, 3rd party: Inconsolata, DejaVuSansMono
" System font: Monaco
set gfn=Source\ Code\ Pro\ Light:h16

" BufSurf settings
nmap <leader>b :BufSurfBack<CR>
nmap <leader>f :BufSurfForward<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ignore flex directory when searching with ctrlp
set wildignore+=*/flex/*,*/source_maps/*

" Fold indentation coffeescript - hit zi to toggle
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" Disabling arrow keys for navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Remap VIM 0 to first non-blank character
map 0 ^
