" References:
" https://github.com/carlhuda/janus
" http://davidbolton.net/blog/content/uploads/2010/08/vimrc.txt
set nocompatible

set number
set ruler
syntax on

set t_Co=256
colorscheme railscasts 

let mapleader = ","

call pathogen#infect()
filetype plugin indent on

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
nmap <leader>w :w

" NERDTree Configuration
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <F6><F6> :TlistToggle<CR>

" Solarized Theme Configuration
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" Different languages settings
autocmd FileType ColdFusion setlocal ts=4 sts=4 sw=4 expandtab
