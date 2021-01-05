set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'tomtom/tcomment_vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -----------------------
" nerdtree settings
" -----------------------
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" -----------------------
" emmet settings
" -----------------------
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby EmmetInstall

" -----------------------
" FZF settings
" -----------------------
map <C-p> :FZF<CR>

syntax enable
set autoindent
set number
set showcmd
set incsearch
set hlsearch
" set guifont=Consolas:h18
set guifont=Fira\ Code:h16
set laststatus=2
set guioptions-=r
set lazyredraw
set cursorline
set splitright

" -----------------------
" ruby block tex object settings
" -----------------------
runtime macros/matchit.vim

""" soft tab with 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set termguicolors
colorscheme gruvbox
set background=dark

set guioptions-=L  "remove left-hand scroll bar

set number relativenumber

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Rewrite new line command
nnoremap nl o<esc>

augroup vimrc_autocmd
  autocmd!

  " Remove tailing spaces on save
  autocmd BufWritePre * %s/\s\+$//e

  " -----------------------
  " nerdtree settings
  " -----------------------
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " use normal tab when makefile
  autocmd FileType make setlocal noexpandtab
augroup END

let g:python_recommended_style=0

" for displaying indent lines
set conceallevel=1
let g:indentLine_conceallevel=1

