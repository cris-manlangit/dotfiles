" colorscheme night-owl
" colorscheme synthwave84
colorscheme solarized
" colorscheme vividchalk
" colorscheme molokai
" colorscheme atom-dark
set background=dark

let mapleader = " "
" enable syntax processing
" syntax on
syntax enable
filetype plugin indent on

set tabstop=4
set autoindent
set shiftwidth=4
set noexpandtab
" set indentexpr=

" number spaces in tab when editing
" set softtabstop=4

" show line numbers
set number

" show relative line number
set relativenumber

" show command in bottom bar
set showcmd

" highlight current line
"set cursorline'

" load filetype-specific indent files
" filetype indent on

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()}]
set showmatch

" case insensitive search
set ignorecase

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

set backspace=indent,eol,start

set noerrorbells
set belloff=all

set scrolloff=10
set colorcolumn=80
set pastetoggle=<F3>

set nowrap

set listchars=eol:$,tab:<->,space:·

" fzf integration
" set rtp+=/usr/local/opt/fzf

call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'raimondi/delimitmate'
Plug 'dracula/vim', { 'as': 'dracula' }

" Plug 'lervag/vimtex'

" Plug 'edkolev/tmuxline.vim'

call plug#end()




noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" inoremap <C-k> <Up>
" inoremap <C-j> <Down>

" used with YCM pop up
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" navigate and center
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-o> :w<CR><C-o>zz
nnoremap <C-]> :w<CR><C-]>zz

" nav to search pattern and center
nnoremap n nzzzv
nnoremap N Nzzzv

" put previous yank over replace text
xnoremap <leader>p "_dp

nnoremap <C-f> :Files<CR>

nnoremap <F2> :set list!<CR>
nnoremap <F5>p :wa<CR>:!python main.py<CR>
nnoremap <F5>l :wa<CR>:!xelatex --jobname=Cris_Manlangit Main.tex<CR>
vnoremap <F4> y/<C-r>"<CR>
nnoremap <leader>tb ::TagbarOpenAutoClose<CR>
nnoremap <leader>rt :!ctags -R .<CR><CR>

let g:ycm_python_binary_path = '/Users/cmanlangit/.pyenv/versions/3.8.15/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:airline_theme='solarized_flood'
let g:airline#extensions#whitespace#enabled = 0
" let g:python_recommended_style=0
