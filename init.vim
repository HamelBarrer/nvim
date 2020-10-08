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
Plug 'kaicataldo/material.vim', { 'branch': 'main' } " temas

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
"set termguicolors
"let ayucolor="dark"
let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
colorscheme material
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

""""""""""""""" Configuracion para el tema
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
