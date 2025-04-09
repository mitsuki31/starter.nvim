-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.cmp")
require("config.renamer")

vim.cmd('colorscheme nightfly')

-- Disable plugins check order
vim.g.lazyvim_check_order = false
