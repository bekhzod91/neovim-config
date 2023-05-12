function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-- Disable arrow keys
--map("n", "<M-Up>", ":resize -2<CR>")
--map("n", "<M-Down>", ":resize +2<CR>")
--map("n", "<M-Left>", ":vertical resize -2<CR>")
--map("n", "<M-Right>", ":vertical resize +2<CR>")

-- Close current tab
--map('n', '<C-w>', ':bw<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- NvimTree
map('n', '<leader>n', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh

-- Switch between split
map('n', '<C-H>', '<C-W>h')
map('n', '<C-J>', '<C-W>j')
map('n', '<C-K>', '<C-W>k')
map('n', '<C-L>', '<C-W>l')

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move selected line / block of text in visual mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Switch between tab
map("n", "<TAB>", ":bn<CR>")
map("n", "<S-TAB>", ":bp<CR>")

-- Telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
map("n", "<leader>fe", "<cmd> Telescope file_browser <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<leader>fc", "<cmd> Telescope colorschemes <CR>")

