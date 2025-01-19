-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.cmd [[
  let g:vimtex_quickfix_ignore_filters = [
  \'Underfull',
  \'Overfull',
  \'Warning',
  \'Missing',
  \'Undefined',
  \'systeme',
  \]
]]
