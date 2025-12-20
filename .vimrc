
set path+=**
set splitbelow
set nowrap

set expandtab
set tabstop=4
set shiftwidth=4

set number
set relativenumber
set signcolumn=yes

set hlsearch
set smartcase
set ignorecase
set incsearch

set belloff=all

" hi Normal guibg=NONE
" hi EndOfBuffer guibg=NONE
" hi SignColumn guibg=NONE
" hi ModeMsg guibg=NONE guifg=#ffffff
" hi MatchParen guibg=#d7875f guifg=#ffffff

let mapleader = " "

nnoremap <leader>f :find 
nnoremap <leader>pb <CMD>buffer #<CR>
nnoremap <leader>t <CMD>split <BAR> term<CR>

vnoremap > >gv
vnoremap < <gv

" window navigation

nnoremap <A-h> <C-\><C-n><C-w>h
nnoremap <A-j> <C-\><C-n><C-w>j
nnoremap <A-k> <C-\><C-n><C-w>k
nnoremap <A-l> <C-\><C-n><C-w>l

inoremap <A-h> <C-\><C-n><C-w>h
inoremap <A-j> <C-\><C-n><C-w>j
inoremap <A-k> <C-\><C-n><C-w>k
inoremap <A-l> <C-\><C-n><C-w>l

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
