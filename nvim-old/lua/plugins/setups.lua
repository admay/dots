-- simple setups
require('tabline').setup({})
require('range-highlight').setup({})
require('pears').setup(function(conf)
    conf.preset('tag_matching')
end)
