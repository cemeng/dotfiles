"VimPlug -------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rking/ag.vim' ":Ag
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'  ":Gblame
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'CopilotC-Nvim/CopilotChat.nvim'
call plug#end()

lua << EOF
require("CopilotChat").setup {
  -- See Configuration section for options
}
EOF

" Required:
filetype plugin indent on

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

set directory=~/.vim/sessions/

" tabs -> spaces
" mainly for Ruby
set nowrap
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set colorcolumn=80

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

" Ignore these directories when searching with ctrlp
set wildignore+=*/flex/*,*/source_maps/*,*/tmp/*,*/db/migrate/*,*/bin/*,*/bower_components/*,*/node_modules/*,*/target/*,*/build/*,*.class

" Disabling arrow keys for navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Remap VIM 0 to first non-blank character
map 0 ^

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

autocmd filetype crontab setlocal nobackup nowritebackup
