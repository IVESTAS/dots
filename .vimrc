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
set isfname+=@-@
set colorcolumn=80
set splitbelow
set clipboard=unnamedplus
set paste
set mouse=a
set cursorline

let mapleader=" "

nnoremap <leader>;v :Ex<CR>
tnoremap <Esc> <C-\><C-n>

" copy to clipboard
vnoremap <leader>y :w !xsel --clipboard -i<CR><CR>:visual!<CR>

" make the current file executable
nnoremap <silent> <leader>x :!chmod +x %<CR>

set background=dark
""colorscheme habamax

set t_Co=256
colors zenburn

" plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
call plug#end()

" fzf, for grep make sure you have ripgrep installed
nnoremap <leader>;f :Files<CR>
nnoremap <leader>;s :Rg<CR>

" fix autoindent not being loaded for whatever reason
autocmd VimEnter * set autoindent
