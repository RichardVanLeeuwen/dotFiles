return { {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("gruvbox")
    require("gruvbox").setup({
    })
  end,
},
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
    }
  }
}
