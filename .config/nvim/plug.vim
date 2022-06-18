call plug#begin('$HOME/.vim/plugged')

" fzf
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" colors!
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'gruvbox-community/gruvbox'
Plug 'folke/todo-comments.nvim'

" lsp/auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git stuff
Plug 'mhinz/vim-signify'
Plug 'TimUntersberger/neogit'
Plug 'tpope/vim-fugitive'

" file tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" indents
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()
