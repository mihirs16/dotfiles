" set options
set laststatus=2
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set guicursor=
set nohlsearch
set incsearch
set scrolloff=8
set signcolumn=yes
set background=dark
set splitright

call plug#begin()

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sharkdp/fd'
Plug 'BurntSushi/ripgrep'

" tree-sitter
Plug 'nvim-treesitter/nvim-treesitter'

" neo-tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" colorschemes
Plug 'flazz/vim-colorschemes'

call plug#end()


" remaps
let mapleader = " "
nnoremap <leader>ps :Telescope find_files<cr>
nnoremap <leader>ex :Neotree focus<cr>
nnoremap <C-t>      :Neotree toggle show<cr>
nnoremap <leader>dd :call CocActionAsync('jumpDefinition')<cr>

" color scheme
colorscheme vimbrant 
hi Normal                   guibg=NONE  ctermbg=NONE
hi SignColumn               guibg=NONE  ctermbg=NONE 
hi StatusLine               ctermfg=66  ctermbg=234

" gitsigns highlights
hi GitSignsAdd              guibg=NONE  ctermbg=NONE  guifg=155  ctermfg=155
hi GitSignsChange           guibg=NONE  ctermbg=NONE  guifg=228  ctermfg=33
hi GitSignsDelete           guibg=NONE  ctermbg=NONE  guifg=197  ctermfg=197

" neo-tree highlights
hi NeoTreeCursorLine        guibg=240   ctermbg=236
hi NeoTreeDirectoryName     guifg=250   ctermfg=250
hi NeoTreeDirectoryIcon     guifg=250   ctermfg=250
hi NeoTreeNormal            guifg=250   ctermfg=250
hi NeoTreeFileName          guifg=250   ctermfg=250
hi NeoTreeDotfile           guifg=240   ctermfg=240
hi NeoTreeGitModified       guifg=228   ctermfg=228
hi NeoTreeGitUntracked      guifg=155   ctermfg=155
hi NeoTreeGitDeleted        guifg=197   ctermfg=197

" lua
lua << EOF
require'neo-tree'.setup {
    filesystem = {
        filtered_items = {
            visible = true
        }
    },
    window = {
        position = "left"
    }
}

require'gitsigns'.setup{
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
        delete       = {hl = 'GitSignsDelete', text = '▷', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},   
        topdelete    = {hl = 'GitSignsDelete', text = '▷', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},   
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

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
EOF
