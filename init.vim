call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'scrooloose/nerdtree'  
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

autocmd FileType cpp map <F9> :w <CR> :!g++ % -o %< && ./%< <CR>
autocmd FileType c map <F9> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set encoding=UTF-8
set showcmd

colorscheme gruvbox
set background=dark

set hidden
set mouse=a
set relativenumber
set inccommand=split
set termguicolors

let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
