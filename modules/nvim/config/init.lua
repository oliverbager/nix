-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd[[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
]]

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

require("luasnip").config.set_config({ -- Setting LuaSnip config

  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
})
