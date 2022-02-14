local map = require('common').map
local nnoremap = require('common').nnoremap
local inoremap = require('common').inoremap
local vnoremap = require('common').vnoremap
local cnoremap = require('common').cnoremap

nnoremap('<space>', '<Nop>')

-- editing
nnoremap('Y', 'y$')

-- convenience
nnoremap(';', ':')
inoremap('jk', '<Esc>')

-- splits
nnoremap('<c-h>', '<c-w>h')
nnoremap('<c-j>', '<c-w>j')
nnoremap('<c-k>', '<c-w>k')
nnoremap('<c-l>', '<c-w>l')

-- editing
inoremap('<c-d>', '<Esc>ddi')

-- Telescope
-- General
nnoremap('<leader>ff', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')

-- Code
nnoremap('<leader>fr', '<cmd>Telescope lsp_references<cr>')
nnoremap('<leader>fi', '<cmd>Telescope lsp_implementations<cr>')
nnoremap('<leader>gs', '<cmd>Telescope git_status<cr>')
