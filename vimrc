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
inoremap jj <ESC>

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
set gfn=Source\ Code\ Pro\ Light:h14

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

" Enable autocomplete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Use silver search to replace ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" vim.rails projection
let g:rails_projections = {
      \ "app/serializers/*_serializer.rb": {
      \   "command": "serializer",
      \   "template": "class %SSerializer < ActiveModel::Serializer\nend",
      \   "test": "spec/serializers/%s_spec.rb",
      \   "related": "app/models/%s.rb"
      \ },
      \}
" https://gist.github.com/cloud8421/5490033

"let g:rails_projections = {
"      \ "config/projections.json": {
"      \   "command": "projections"
"      \ }}
"
"let g:rails_gem_projections = {
"      \ "active_model_serializers": {
"      \   "app/serializers/*_serializer.rb": {
"      \     "command": "serializer",
"      \     "affinity": "model"
"      \   }
"      \ },
"      \ "simple_form": {
"      \   "app/inputs/*_input.rb": {
"      \     "command": "input",
"      \     "template": "class %SInput < SimpleForm::Inputs::CHANGEME\n  def input\n\n  end\nend"
"      \   }
"      \ },
"      \ "factory_girl_rails": {
"      \   "spec/factories/*_factory.rb": {
"      \     "command": "factory",
"      \     "affinity": "collection",
"      \     "alternate": "app/models/%i.rb",
"      \     "related": "db/schema.rb#%s",
"      \     "test": "spec/models/%i_spec.rb",
"      \     "template": "FactoryGirl.define do\n  factory :%i do\n  end\nend",
"      \     "keywords": "factory sequence"
"      \   }
"      \ }}
"
