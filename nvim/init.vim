" default: options
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
Plug 'lewis6991/gitsigns.nvim'

" File Tree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" color scheme
:set background=dark
:colorscheme vimbrant 
hi Normal guibg=NONE ctermbg=NONE
let g:gitgutter_override_sign_column_highlight = 0
hi SignColumn guibg=NONE ctermbg=NONE 

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

require'gitsigns'.setup{
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = ' ', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = ' ', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
        delete       = {hl = 'GitSignsDelete', text = ' ', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},   
        topdelete    = {hl = 'GitSignsDelete', text = ' ', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},   
        changedelete = {hl = 'GitSignsChange', text = ' ', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    }
}

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
