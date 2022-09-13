local M = {}

M.setup = function ()
  vim.g.loaded = 1
  vim.g.loaded_netrwPlugin = 1

  require("nvim-tree").setup()
end


return M
