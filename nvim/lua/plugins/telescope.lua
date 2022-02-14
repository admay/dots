require('telescope').load_extension('fzf')
require('telescope').load_extension('heading')

local nnoremap = require('../common').nnoremap

local actions = require('telescope.actions')
require('telescope').setup({
    defaults = require('telescope.themes').get_ivy({
        mappings = {
            i = {
                ['<esc>'] = actions.close,
            },
        },
    }),
})
