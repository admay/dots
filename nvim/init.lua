local try_require = require('common').try_require

-- options
try_require('options')

-- packages
try_require('pack')
require('impatient').enable_profile()

-- mappings
try_require('mappings')

-- plugins
try_require('plugins.cmp')
try_require('plugins.gitsigns')
try_require('plugins.hardline')
try_require('plugins.lspconfig')
try_require('plugins.colorscheme')
try_require('plugins.telescope')
try_require('plugins.treesitter')
try_require('plugins.vimwiki')