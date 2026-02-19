
set path+=**
set wildignore+=*/.git/*

set textwidth=129

set cursorline

set laststatus=3
set splitbelow
set nowrap

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set number
set relativenumber
set signcolumn=yes

set hlsearch
set smartcase
set ignorecase
set incsearch

set belloff=all
set termguicolors

let mapleader = " "

" inoremap <C-e> <ESC>ea

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

vnoremap <leader>y "+y
nnoremap <leader>y "+y

nnoremap <leader>b <CMD>buffer #<CR>
nnoremap <leader>t <CMD>split <BAR> term<CR>i

vnoremap > >gv
vnoremap < <gv

" window navigation

tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
