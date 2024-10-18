filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
syntax enable
set background=dark
" disabled for now - prefer default colorscheme
" colorscheme solarized
" allow deleting beyond insert point
set backspace=indent,eol,start

" Display line/column numbers in bottom-right corner
set ruler
" Highlight search matches
set hlsearch

" Enable line numbers
set number

" Disable Louipe's default 'very magic' enablement
let g:LoupeVeryMagic=0

" Plugin management with vim-plugin
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

# Autocomplete support
Plug 'Valloric/YouCompleteMe'

" Highlight current search match differently
Plug 'wincent/loupe'

" Runs the currently-open file through Flake8
Plug 'nvie/vim-flake8'

" Initialize plugin system
call plug#end()
