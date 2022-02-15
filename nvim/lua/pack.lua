vim.cmd('packadd packer.nvim')

return require('packer').startup({
    function(use)
        -- initialization
        use('wbthomason/packer.nvim')
        use('lewis6991/impatient.nvim')
        use('nvim-lua/plenary.nvim')
        use('nvim-lua/popup.nvim')
        use('mhinz/vim-startify')

        -- color scheme(s)
        use('joshdick/onedark.vim')

        -- files and searching
        use('nvim-telescope/telescope.nvim')
        use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
        use('preservim/nerdtree')

        -- view
        use('ojroques/nvim-hardline')           -- status line at bottom
        use('Yggdroot/indentLine')              -- shows indent lines
        use('dstein64/nvim-scrollview')         -- scroll bar at right side
        use('RRethy/vim-illuminate')            -- highlight hover word
        use('airblade/vim-gitgutter')           -- git signs on the left
        -- use('winston0410/cmd-parser.nvim')
        use('winston0410/range-highlight.nvim') -- highlight range lines

        -- code
        use('tpope/vim-repeat')
        use('tpope/vim-surround')
        use('tpope/vim-commentary')
        use('steelsojka/pears.nvim')

        -- language
        use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
        use('nvim-treesitter/playground')
        use('neovim/nvim-lspconfig')
        use({
            'hrsh7th/nvim-cmp', -- completion
            requires = {
                'hrsh7th/cmp-nvim-lsp', -- cmp lsp
                'hrsh7th/cmp-buffer', -- cmp buffer
                'hrsh7th/cmp-path', -- cmp path
            },
        })
        use('Olical/conjure')
        use('clojure-vim/vim-jack-in')
        use('tpope/vim-dispatch')
        use('radenling/vim-dispatch-neovim')
        use('christoomey/vim-tmux-navigator')

    end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        },
    },
})
