set t_Co=256
colorscheme railscasts 

let mapleader = ","

call pathogen#infect()
syntax on
filetype plugin indent on

" tabs -> spaces
" mainly for Ruby
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
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <F6><F6> :TlistToggle<CR>

" different languages settings
autocmd FileType ColdFusion setlocal ts=4 sts=4 sw=4 expandtab
