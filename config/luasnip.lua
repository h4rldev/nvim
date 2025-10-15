local ls = require 'luasnip'
local lsvsnip = require 'luasnip.loaders.from_vscode'

ls.setup()
lsvsnip.lazy_load()
