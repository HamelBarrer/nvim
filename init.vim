" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Neovim
Plug 'rust-lang/rust.vim' " Rust
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go
Plug 'vim-airline/vim-airline' " Barra de estados
Plug 'vim-airline/vim-airline-themes' " Temas para la barra de estados
Plug 'preservim/nerdtree' " Menu
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons' " Iconos
Plug 'ayu-theme/ayu-vim' " temas

" Initialize plugin system
call plug#end()

set encoding=UTF-8

let g:rustfmt_autosave = 1 " Configuracion de formateo para rust

" Barra de Estado
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas) barra de estados
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo barra de estados
let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)


" Abrir menu con F2
map <F2> :NERDTreeToggle<CR>
"


" Configuracion de color
set termguicolors
let ayucolor="dark"
colorscheme ayu
"""""""""""""""""""""""

"""""" Configuracion de editor
set number relativenumber
set laststatus=0
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set showtabline=4
set formatoptions-=cro
set hidden
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set ruler
set splitbelow
set splitright
set background=dark
set autochdir
