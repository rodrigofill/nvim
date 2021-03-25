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
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()

autocmd FileType cpp map <F9> :w <CR> :!g++ % -o %< && ./%< <CR>
autocmd FileType c map <F9> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set encoding=UTF-8
set showcmd

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
colorscheme spaceduck
set background=dark

set hidden
set mouse=a
set number
set relativenumber
set inccommand=split
set termguicolors

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('lspconfig').pyls.setup{on_attach=require'completion'.on_attach}

let g:airline_powerline_fonts = 1
let g:airline_theme='spaceduck'

let mapleader="\<space>"
nnoremap <leader>; A;<esc>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>tr :NERDTree<cr>
nnoremap <leader>j 10j
nnoremap <leader>k 10k

nnoremap <c-p> :Files<cr>
