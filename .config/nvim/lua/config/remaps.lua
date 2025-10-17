-- netrW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "netrw" })

-- running lua
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "e[X]ecute file" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "e[X]ecute line" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "e[X]ecute selection" })

-- Quickfix
vim.keymap.set("n", "<leader>cj", "<cmd>cnext<CR>", { desc = "[N]ext" })
vim.keymap.set("n", "<leader>ck", "<cmd>cprev<CR>", { desc = "[P]rev" })
vim.keymap.set("n", "<leader>co", "<cmd>cope<CR>", { desc = "[O]pen" })
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<CR>", { desc = "[C]lose" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "G", "Gzzzv")

vim.keymap.set("x", "<leader>p", [[\"_dP]])

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "lsp [f]ormat" })

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Exiting vim
vim.keymap.set("n", "<leader>qq", "<cmd>q<CR>", { desc = "[q]uit" })
vim.keymap.set("n", "<leader>qf", "<cmd>q!<CR>", { desc = "[f]orce quit" })
vim.keymap.set("n", "<leader>qw", "ZZ", { desc = "[w]rite quit" })
