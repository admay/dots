require('telescope').load_extension('session-lens')

local set_keymap = require('../common').set_keymap
set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
set_keymap('n', '<leader>fl', '<cmd>Telescope lsp_document_symbols<cr>')
set_keymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>')
