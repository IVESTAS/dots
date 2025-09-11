syntax on
set background=dark
set guicursor=
set nu
set relativenumber
set expandtab 
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nowrap
set noswapfile
set nobackup
set undofile
set nohlsearch
set incsearch
set scrolloff=8
set signcolumn=no
set colorcolumn=120
set splitbelow
set clipboard=unnamedplus
set mouse=a

let mapleader=" "

" netrw
nnoremap <leader>;v :Ex<CR>

" copy to clipboard
vnoremap <leader>y :w !wl-copy <CR><CR>:visual!<CR>

" make the current file executable
nnoremap <silent> <leader>x :!chmod +x %<CR>

colorscheme quiet 
highlight Comment ctermfg=green
highlight String ctermfg=gray
