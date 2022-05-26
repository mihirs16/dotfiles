" default options
:set laststatus=2
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set guicursor=
:set nohlsearch
:set incsearch
:set scrolloff=8
:set signcolumn=yes

" vim-plug
call plug#begin()

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'BurntSushi/ripgrep'

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'srcery-colors/srcery-vim'
Plug 'ghifarit53/tokyonight-vim'

" COC
Plug 'neoclide/coc.nvim'

call plug#end()

" color scheme
:set background=dark
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
:colorscheme tokyonight

" remaps
let mapleader = " "
nnoremap <leader>ps :Telescope find_files
nnoremap <leader>ex :Explore

