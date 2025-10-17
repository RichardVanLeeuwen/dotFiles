return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
    "nvim-tree/nvim-web-devicons"
  },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
