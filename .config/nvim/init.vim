" Los cometarios en este fichero se escriben con doble comilla 
" Añadimos un mensaje como complemento de ayuda
autocmd VimEnter * echo 'activar numeración: set number - set nonumber'



"set mouse=a " Al activarlo, el copia/pega no funciona correctamente
set cursorline
set ignorecase
set smartcase
set wrap
set cursorline  " Resalta la línea actual
set hidden
set ignorecase
set spelllang=es
set termguicolors
set background=light
colorscheme zellner  " Nombre del tema
set breakindent

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstop so <BS> do the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set colorcolumn=80 
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
