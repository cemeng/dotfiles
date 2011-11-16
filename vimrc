" References:
" https://github.com/carlhuda/janus
" http://davidbolton.net/blog/content/uploads/2010/08/vimrc.txt
set nocompatible

set number
set ruler
syntax on

let mapleader = ","

call pathogen#infect()
call pathogen#helptags()
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

" NERDTree Configuration
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <F6><F6> :TlistToggle<CR>
let NERDTreeShowBookmarks=1

" COLOR CONFIG 
set t_Co=256
" colorscheme railscasts 
" colorscheme koehler 

" Solarized Theme Configuration
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" Different languages settings
autocmd FileType ColdFusion setlocal ts=4 sts=4 sw=4 expandtab

" Font
set gfn=Menlo:h14

" BufSurf settings
nmap <leader>b :BufSurfBack<CR>
nmap <leader>f :BufSurfForward<CR>

