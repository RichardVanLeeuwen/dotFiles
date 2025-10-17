return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    spec = {
      { "<leader>f", group = "[F]ind" },
      { "<leader>c", group = "Quickfix" },
      { "<leader>q", group = "[Q]uit" },
    },
  },
}
