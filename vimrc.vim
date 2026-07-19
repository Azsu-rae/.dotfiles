
set textwidth=90
set wildignorecase
set path+=**

set laststatus=3
set splitbelow
set nocursorline
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

inoremap <C-f> <cmd>Telescope find_files<CR>

nnoremap <leader>% <CMD>echo expand('%')<CR>

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

vnoremap <leader>y "+y
nnoremap <leader>y "+y

nnoremap <leader>b <CMD>b #<CR>
tnoremap <ESC><ESC> <C-\><C-n>

nnoremap <M-l> 3zl
nnoremap <M-h> 3zh

nnoremap <S-ScrollWheelUp> 3zh
nnoremap <S-ScrollWheelDown> 3zl
