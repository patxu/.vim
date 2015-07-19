call pathogen#infect()
call pathogen#helptags()

filetype indent plugin on
syntax on
set nocompatible

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

au Filetype python setl ts=2 sw=2 

"to remap F12 to bring us past brackets or parentheses so we can close the line
inoremap <F12> <ESC>%%a

"for iTerm2 on OSX
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"to set the color scheme
"syntax enable
set background=dark 
let g:solarized_termtrans=1
let g:solarized_termcolors=256
se t_Co=16
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
