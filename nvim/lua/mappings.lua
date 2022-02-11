local map = require('common').map
local nnoremap = require('common').nnoremap
local inoremap = require('common').inoremap
local vnoremap = require('common').vnoremap
local cnoremap = require('common').cnoremap

-- editing
nnoremap('Y', 'y$')

-- convenience
nnoremap(';', ':')

-- splits
nnoremap('<c-h>', '<c-w>h')
nnoremap('<c-j>', '<c-w>j')
nnoremap('<c-k>', '<c-w>k')
nnoremap('<c-l>', '<c-w>l')

-- LSP
nnoremap('<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
nnoremap('<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
nnoremap('<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
nnoremap('<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
nnoremap('<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
nnoremap('<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap('<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
