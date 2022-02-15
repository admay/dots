local map = require('common').map
local nnoremap = require('common').nnoremap
local inoremap = require('common').inoremap
local vnoremap = require('common').vnoremap
local cnoremap = require('common').cnoremap

nnoremap('<space>', '<Nop>')

-- navigating
nnoremap('<space>ft', '<cmd>NERDTreeToggle<cr>')

-- editing
nnoremap('Y', 'y$')
inoremap('<c-d>', '<Esc>ddi')

-- convenience
nnoremap(';', ':')
inoremap('jk', '<Esc>')

-- splits
nnoremap('<c-h>', '<c-w>h')
nnoremap('<c-j>', '<c-w>j')
nnoremap('<c-k>', '<c-w>k')
nnoremap('<c-l>', '<c-w>l')

-- Telescope
-- General
nnoremap('<leader>ff', '<cmd>Telescope find_files hidden=true<cr>')
nnoremap('<leader>fd', '<cmd>Telescope git_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nnoremap('<leader>fl', '<cmd>Telescope lsp_document_symbols<cr>')
nnoremap('<leader>fk', '<cmd>Telescope keymaps<cr>')
nnoremap('<leader>fm', '<cmd>Telescope heading<cr>')

-- Code
nnoremap('<leader>fr', '<cmd>Telescope lsp_references<cr>')
nnoremap('<leader>fi', '<cmd>Telescope lsp_implementations<cr>')
nnoremap('<leader>gs', '<cmd>Telescope git_status<cr>')
nnoremap('<leader>eb', '<cmd>ConjureEvalBuf<cr>')
nnoremap('<leader>ee', '<cmd>ConjureEval<cr>')
nnoremap('<leader>ef', '<cmd>ConjureEvalCurrentForm<cr>')
