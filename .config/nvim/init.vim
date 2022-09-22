call plug#begin('$HOME/.config/nvim/plugins')

"Temas Gruvbox
Plug 'sainnhe/gruvbox-material'

" LSP
Plug 'neovim/nvim-lspconfig'



call plug#end()

" Config GruvBox
set background=dark
let g:gruvbox_material_background='medium'
colorscheme gruvbox-material
" LSP




" Añadimos un mensaje como complemento de ayuda
"autocmd VimEnter * echo 'activar numeración: set number - set nonumber. Ctrl+l limpia la pantalla de búsqueda.'


" Al activar el mouse, el copy paste funciona raro. Así que lo activamos sólo
" cuando está en modo normal y modo visual. Al pasarlo al modo insert, el
" ratón deja de funcionar, pero copiar y pegar deberían funcionar
" correctamente.Actualmente utilizo tmux como emulador de terminal y así
" parece que no se necesita ninguna opción especial para pegar y copiar. Puedo
" tener mouse=a, y copiar/pegar dsd el interior y exterior usando el ratón
set mouse=a
" Mapeamos los registros para que se puedan usar con control+c y control+v, y
" ambos botones del ratón. Ahora funciona en modo insert y los demás: el botón
" del medio copia y el botón derecho pega, tanto desde el interior como
" exterior
:map <C-c> "+y
:map <RightMouse> "+y
:map <MiddleMouse> "+p


" Se puede mapear un comando usando control + leftmouse, por ejemplo:
"nnoremap <C-LeftMouse> :echom 'Foo'<CR>


" leader es una coma, por comodidad:
let mapleader="," 
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

filetype indent on
set ignorecase
"set wildmenu
"set smartcase
"set wrap
set cursorline  " Resalta la línea actual
"set hidden
set ignorecase
set encoding=utf-8
"set spelllang=es
"set termguicolors
"set background=light
"colorscheme zellner  " Nombre del tema
"set breakindent
"set nocompatible            " disable compatibility to old-time vi
"set showmatch               " Resalta los corchetes
"set hlsearch                " highlight search 
"set incsearch               " incremental search
"set tabstop=4               " number of columns occupied by a tab 
"set softtabstop=2           " see multiple spaces as tabstop so <BS> do the right thing
"set expandtab               " converts tabs to white space
"set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
"set wildmode=longest,list   " get bash-like tab completions
"set colorcolumn=80 
"filetype plugin indent on   "allow auto-indenting depending on file type
"filetype plugin on         " No sé si es repetido
"syntax on                   " syntax highlighting
"set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file





