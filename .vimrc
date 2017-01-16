call pathogen#infect()
call pathogen#helptags()

syntax enable
filetype plugin on
set nocompatible

"to set the color scheme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

"vim latex
"set grepprg=grep\ -nH\ $*
"filetype indent on
"let g:tex_flavor='latex'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
set wmh=0
set winheight=999

set cursorline
noremap <Leader>c :set cursorline!<CR>
set autochdir
set autoindent
set hlsearch
set shiftwidth=2
"set softtabstop=2
set tabstop=2
set expandtab
set smarttab
set wildmenu
set wildmode=list:longest,full
set number
set ignorecase
set smartcase
set laststatus=2
set ruler
set history=500
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au Filetype python setl ts=2 sw=2

"to remap F12 to bring us past brackets or parentheses so we can close the line
inoremap <F12> <ESC>%%a

"use the closetag plugin only when opening html/xml-like files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/vim-closetag/plugin/closetag.vim

"for iTerm2 on OSX
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
