-- set leader key first
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config/settings")
require("config/remaps")
require("config/autocmds")
require("config.lsp")
