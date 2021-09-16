-- Keymappings for ALL things
local set_keymap = require('common').set_keymap
local nvim_set_keymap = require('common').nvim_set_keymap

-- editing
set_keymap('n', 'Y', 'y$')

-- convenience
set_keymap('n', ';', ':')
set_keymap('i', 'jk', '<Esc>')

-- splits
set_keymap('n', '<c-h>', '<c-w>h')
set_keymap('n', '<c-j>', '<c-w>j')
set_keymap('n', '<c-k>', '<c-w>k')
set_keymap('n', '<c-l>', '<c-w>l')

-- LSP
set_keymap('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
set_keymap('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
set_keymap('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
set_keymap('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
set_keymap('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
set_keymap('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
set_keymap('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
set_keymap('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-- plug manager
set_keymap('n', '<leader>pi', '<cmd>PaqInstall<cr>')
set_keymap('n', '<leader>pu', '<cmd>PaqUpdate<cr>')
set_keymap('n', '<leader>pc', '<cmd>PaqClean<cr>')
set_keymap('n', '<leader>pl', '<cmd>PaqList<cr>')
