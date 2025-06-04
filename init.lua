-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.cmp")
require("config.renamer")
require("config.indent-blankline")
require("config.rainbow-delimiters")

vim.cmd("colorscheme tokyonight")
vim.g.nightflyTransparent = true

-- Disable plugins check order
vim.g.lazyvim_check_order = false
