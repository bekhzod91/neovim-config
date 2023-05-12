local M = {}

M.setup = function ()
  vim.g.loaded = 1
  vim.g.loaded_netrwPlugin = 1

  require("nvim-tree").setup()

  require"nvim-tree.api".tree.toggle()

end


return M
