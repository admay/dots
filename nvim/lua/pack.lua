vim.cmd('packadd packer.nvim')

return require('packer').startup({
    function(use)
        use('wbthomason/packer.nvim')
        use('lewis6991/impatient.nvim')

        -- lib
        use('nvim-lua/plenary.nvim')
        use('nvim-lua/popup.nvim')

        -- colorscheme
        use('joshdick/onedark.vim')

        -- file
        use('mhinz/vim-startify')            -- startup page
        use('nvim-telescope/telescope.nvim') -- fuzzy picker
        use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
        use('crispgm/telescope-heading.nvim') -- markdown heading
        use('preservim/nerdtree') -- nerd tree

        -- view
        use('ojroques/nvim-hardline')           -- status line at bottom
        use('Yggdroot/indentLine')              -- shows indent lines
        use('dstein64/nvim-scrollview')         -- scroll bar at right side
        use('RRethy/vim-illuminate')            -- highlight hover word
        -- use('lewis6991/gitsigns.nvim')          -- git signs
        use('airblade/vim-gitgutter')           -- git in the gutter
        use('winston0410/cmd-parser.nvim')      -- for range highlight
        use('winston0410/range-highlight.nvim') -- highlight range lines
        use('norcalli/nvim-colorizer.lua')      -- color codes rendering
        use('crispgm/nvim-tabline')             -- tab line up top with multiple tabs

        -- edit
        use('tpope/vim-repeat') -- allow commands from plugin do repeat
        use('tpope/vim-surround') -- toggle surround
        use('tpope/vim-commentary') -- comments
        use('christoomey/vim-system-copy') -- copy to system clipboard
        use('AndrewRadev/splitjoin.vim')
        use({
            'steelsojka/pears.nvim', -- auto symbol pairs
            config = function()
                require('pears').setup(function(conf)
                    conf.remove_pair_on_outer_backspace(false)
                    conf.expand_on_enter(false)
                    conf.preset('tag_matching')
                end)
            end,
        })

        -- language
        use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})  -- treesitter
        use('nvim-treesitter/playground')                            -- treesitter playground
        use('neovim/nvim-lspconfig')                                 -- lsp client config
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
