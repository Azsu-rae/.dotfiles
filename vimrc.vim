
colorscheme habamax

set textwidth=90
set wildignorecase
set path+=**

set timeout           " Time out on mapping sequences
set ttimeout          " Time out on terminal key code sequences
set timeoutlen=1000   " Wait 1 second for your custom mappings (e.g., jk)
set ttimeoutlen=10    " Wait only 10ms for terminal key codes (ESC, arrows)

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

set smartcase
set ignorecase
set incsearch

set belloff=all
set termguicolors

" let mapleader = " "

nnoremap <S-ScrollWheelUp> 3zh
nnoremap <S-ScrollWheelDown> 3zl

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

call plug#end()
