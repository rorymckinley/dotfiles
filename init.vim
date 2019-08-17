" Plugin management
call plug#begin('~/.local/share/nvim/plugins')
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tmhedberg/matchit'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'posva/vim-vue'
" Colorscheme
Plug 'tomasr/molokai'
Plug 'broduo/broduo-color-scheme'
call plug#end()

syntax enable
filetype plugin indent on
runtime macros/matchit.vim

let mapleader=" "

set mouse=

if (has("termguicolors"))
 set termguicolors
endif
colorscheme molokai
set background=dark

" Visual cues
set colorcolumn=120
set relativenumber
set showmatch

" Indentation
set tabstop=2
set shiftwidth=2
" set smarttab
set expandtab
set softtabstop=2
set autoindent

" Searching
nnoremap / /\v
vnoremap / /\v
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader>h :noh<cr>

" Ruby stuffz
let ruby_operators = 1
let ruby_space_errors = 1

" Go Stuffz
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>s <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

nnoremap <Leader>t :CtrlP<CR>

" Disable arrow keys
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
" Don't remap arrow keys
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap <up> <nop> 

" Filetypes
set fileencoding=utf-8
set fileencodings=utf-8,latin1
