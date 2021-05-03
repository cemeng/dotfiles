"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch "Shougo/neobundle.vim"

" Add or remove your Bundles here:
NeoBundle "ctrlpvim/ctrlp.vim"
NeoBundle "flazz/vim-colorschemes"

NeoBundle "rking/ag.vim" " :Ag
NeoBundle "scrooloose/nerdtree" " directory
NeoBundle "tpope/vim-endwise"
NeoBundle "tpope/vim-fugitive"  " :Gblame
NeoBundle "tpope/vim-haml"
NeoBundle "tpope/vim-markdown"
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-surround"
NeoBundle "NathanNeff/grails-vim"

" NeoBundle "vim-airline/vim-airline"
NeoBundle "airblade/vim-gitgutter"
NeoBundle "sheerun/vim-polyglot" " syntax highlight for jsx etc
NeoBundle "dense-analysis/ale"

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }

" For colorscheme switchin
" NeoBundle "xolox/vim-misc"
" NeoBundle "xolox/vim-colorscheme-switcher"
" NeoBundle "Valloric/YouCompleteMe"

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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

au FileType groovy setl sw=4 sts=4 et
au FileType gsp setl sw=4 sts=4 et
au FileType go setl sw=4 sts=4 ts=4 et

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
" Prefered themes:
"   - standard: bubblegum, Tomorrow Night *
"   - dark: bvemu, chance-of-storm, Tomorrow-Night-Bright
syntax enable
set background=dark
colorscheme Tomorrow-Night-Bright

" remove trailing whitespace upon saving
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

" Font
" Good fonts, 3rd party: Inconsolata, DejaVuSansMono
" System font: Monaco
set gfn=Source\ Code\ Pro\ Light:h12

" set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ignore these directories when searching with ctrlp
set wildignore+=*/flex/*,*/source_maps/*,*/tmp/*,*/db/migrate/*,*/bin/*,*/bower_components/*,*/node_modules/*,*/target/*,*/build/*,*.class

" thor file is essentially ruby
au BufRead,BufNewFile *.thor set filetype=ruby

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

" ale
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_ruby_rubocop_executable = 'bin/rubocop'
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'ruby': ['rubocop', 'ruby'], }
let g:ale_fixers = {
  \ 'javascript': ['eslint', 'remove_trailing_lines', 'trim_whitespace'],
  \ 'ruby': ['remove_trailing_lines', 'trim_whitespace'], }

" vim.rails projection
let g:rails_projections = {
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

set colorcolumn=80

autocmd filetype crontab setlocal nobackup nowritebackup
