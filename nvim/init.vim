" defaul: options
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

" Git
Plug 'airblade/vim-gitgutter'

" File Tree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" color scheme
:set background=dark
:colorscheme PaperColor  
hi Normal guibg=NONE ctermbg=NONE

" remaps
let mapleader = " "
nnoremap <leader>ps :Telescope find_files
nnoremap <leader>ex :Explore
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
EOF
