return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle <CR>", { desc = "NeoTree" })
    vim.keymap.set("n", "<leader>E", "<Cmd>Neotree reveal_force_cwd <CR>", { desc = "NeoTree CWD" })
    vim.keymap.set("n", "<leader>ge", "<Cmd>Neotree git_status <CR>", { desc = "NeoTree Git" })
    vim.keymap.set("n", "<leader>be", "<Cmd>Neotree buffers <CR>", { desc = "NeoTree Buffers" })
  end,
}
