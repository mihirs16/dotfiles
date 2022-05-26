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
Plug 'flazz/vim-colorschemes'

" COC
Plug 'neoclide/coc.nvim'
Plug 'sbdchd/neoformat'

call plug#end()

" color scheme
:set t_Co=256 
:set background=dark
:colorscheme vimbrant
hi Normal guibg=NONE ctermbg=NONE

" remaps
let mapleader = " "
nnoremap <leader>ps :Telescope find_files
nnoremap <leader>ex :Explore

" lua 
:lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
      "c", 
      "cpp", 
      "python", 
      "javascript",
      "typescript", 
      "rust", 
      "go", 
      "dart" 
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

