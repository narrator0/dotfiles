" -----------------------
" vim-zen
" -----------------------
call zen#init()

Plugin 'townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdtree'

" -----------------------
" nerdtree settings
" -----------------------
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -----------------------
" FZF settings
" -----------------------
map <C-p> :FZF<CR>

syntax enable
set background=dark
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number
set showcmd
set incsearch
set hlsearch 
set guifont=Consolas:h20
set laststatus=2
set guioptions-=r
set termguicolors
colorscheme atom-dark

" use normal tab when makefile
autocmd FileType make setlocal noexpandtab

set guioptions-=L  "remove left-hand scroll bar

set number relativenumber

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Rewrite new line command
nnoremap nl o<esc>

