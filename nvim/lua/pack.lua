local vim = vim

vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt = true}

-- lib
paq 'nvim-lua/plenary.nvim'
paq 'nvim-lua/popup.nvim'

-- theme
paq {'crispgm/nord-vim',  -- forked from official nord-vim, with treesitter and lsp supported
    branch = 'develop'}

-- file
paq 'mhinz/vim-startify'             -- stardup page
paq 'nvim-telescope/telescope.nvim'  -- fuzzy picker
paq 'rmagatti/auto-session'          -- auto session for session lens
paq 'rmagatti/session-lens'          -- session lens for telescope

-- view
paq 'google/vim-searchindex'           -- search index
paq 'ojroques/nvim-hardline'           -- status line
paq 'Yggdroot/indentLine'              -- indent line
paq 'dstein64/nvim-scrollview'         -- scroll bar
paq 'RRethy/vim-illuminate'            -- highlight hover word
paq 'lewis6991/gitsigns.nvim'          -- git signs
paq 'winston0410/cmd-parser.nvim'      -- for range highlight
paq 'winston0410/range-highlight.nvim' -- highlight range lines
paq 'norcalli/nvim-colorizer.lua'      -- color codes rendering
paq 'crispgm/nvim-tabline'             -- tab line

-- edit
paq 'tpope/vim-repeat'            -- repeat that support plugin
paq 'tpope/vim-surround'          -- toggle surround
paq 'tpope/vim-commentary'        -- toggle comment
paq 'christoomey/vim-system-copy' -- copy to system clipboard
paq 'AndrewRadev/splitjoin.vim'   -- split and join in vim
paq 'steelsojka/pears.nvim'       -- auto symbol pairs

-- language
paq {'nvim-treesitter/nvim-treesitter', -- treesitter
    run = ':TSUpdate'}
paq 'nvim-treesitter/playground'        -- treesitter playground
paq 'neovim/nvim-lspconfig'             -- lsp client config
paq 'hrsh7th/nvim-compe'                -- completion
paq 'rafamadriz/friendly-snippets'      -- preconfigured snippets
paq 'hrsh7th/vim-vsnip'                 -- snippets
paq 'hrsh7th/vim-vsnip-integ'           -- vsnip integration for nvim-compe
paq 'rust-lang/rust.vim'                -- rust lang support
paq 'Olical/conjure'                    -- clojure support
paq 'tpope/vim-dispatch'                -- clojure support
paq 'clojure-vim/vim-jack-in'           -- clojure support
paq 'radenling/vim-dispatch-neovim'     -- clojure support

-- navigation
paq 'christoomey/vim-tmux-navigator'
