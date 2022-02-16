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

        -- windows, files, and searching
        use('nvim-telescope/telescope.nvim')
        use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
        use('preservim/nerdtree')
        use('christoomey/vim-tmux-navigator')

        -- view
        use('ojroques/nvim-hardline')
        use('Yggdroot/indentLine')
        use('dstein64/nvim-scrollview')
        use('RRethy/vim-illuminate')
        use('airblade/vim-gitgutter')
        use('winston0410/range-highlight.nvim')

        -- general editing
        use('tpope/vim-repeat')
        use('tpope/vim-surround')
        use('tpope/vim-commentary')
        use('guns/vim-sexp')
        use('tpope/vim-sexp-mappings-for-regular-people')
        use('jiangmiao/auto-pairs')

        -- lsp
        use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
        use('nvim-treesitter/playground')
        use('neovim/nvim-lspconfig')

        -- code
        use('Olical/conjure')
        use('clojure-vim/vim-jack-in')
        use('tpope/vim-dispatch')
        use('radenling/vim-dispatch-neovim')

    end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        },
    },
})
