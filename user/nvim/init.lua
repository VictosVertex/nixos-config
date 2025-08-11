require("config.options")
require("config.keymaps")

-- Plugins
require('plugins.theme')
require('plugins.lualine')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.harpoon')

vim.lsp.enable('lua_ls')
