-- config is declared as a function to allow it to be called on change
-- when switching between light/dark mode I flip between "dark" and "light"
Config = function()
  require("gruvbox").setup({
    contrast = "hard",
  })
  vim.o.background = "dark"
  vim.cmd([[colorscheme gruvbox]])
end
-- pcall calls a function and allows for errors to be handled
-- as used here errors are ignored
-- an error happens when launching nvim since the plugin isn't loaded yet
-- but on reloads the plugin is available and reconfigured with the new settings
pcall(Config)
return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = Config,
}
