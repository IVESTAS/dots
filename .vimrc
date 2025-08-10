set guicursor=
set nu
set relativenumber

set tabstop=2
set softtabstop=2
set shiftwidth=2

" set noexpandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undofile
set nohlsearch
set incsearch
set scrolloff=8
set signcolumn=no
set isfname+=@-@
set colorcolumn=80
set splitbelow
set clipboard=unnamedplus
set paste
set mouse=a
set cursorline

let mapleader=" "

let g:netrw_browse_split = 0
let g:netrw_banner = 0

nnoremap <leader>;v :Ex<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>y "+y
vnoremap <leader>y "+y

" make the current file executable
nnoremap <silent> <leader>x :!chmod +x %<CR>

set background=dark
colorscheme habamax

" plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
call plug#end()

"syntax off 

" fzf, for grep make sure you have ripgrep installed
nnoremap <leader>;f :Files<CR>
nnoremap <leader>;s :Rg<CR>
