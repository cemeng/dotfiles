set nocompatible

set number
set ruler
set hlsearch
set splitright
set splitbelow
set autoread

set noerrorbells
set visualbell

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
set colorcolumn=120

" turn mouse on
set mouse=a

" keys remapping
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>c :close<CR>
inoremap jj <ESC>:w<CR>

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
colorscheme Tomorrow-Night

" remove trailing whitespace upon saving
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Font
" Good fonts, 3rd party: Inconsolata, DejaVuSansMono
" System font: Monaco
set gfn=Source\ Code\ Pro\ Light:h12

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ignore flex directory when searching with ctrlp
set wildignore+=*/flex/*,*/source_maps/*,*/tmp/*,*/db/migrate/*,*/bin/*,*/bower_components/*,*/node_modules/*

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

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" vim.rails projection
let g:rails_projections = {
      \ "app/serializers/*_serializer.rb": {
      \   "command": "serializer",
      \   "template": "class %SSerializer < ActiveModel::Serializer\nend",
      \   "test": "spec/serializers/%s_spec.rb",
      \   "related": "app/models/%s.rb"
      \ },
      \ "app/importers/*_importer.rb": {
      \   "command": "imp",
      \ },
      \ "app/exporters/*_exporter.rb": {
      \   "command": "exp",
      \ },
      \ "app/services/*.rb": {
      \   "command": "service"
      \ },
      \ "app/controllers/*_controller.rb": {
      \   "command": "controller",
      \   "test"   : "spec/requests/%s_request_spec.rb",
      \ },
      \ "app/controllers/api/*_controller.rb": {
      \   "command": "controller",
      \   "test"   : "spec/requests/%s_request_spec.rb",
      \ }
      \}
" https://gist.github.com/cloud8421/5490033

" NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" CtrlP auto cache clearing
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
  autocmd FileType actionscript,mxml setlocal nosmarttab noexpandtab shiftwidth=4 tabstop=4
endif
" show airline even when no split
set laststatus=2
