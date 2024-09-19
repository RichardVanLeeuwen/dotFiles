
if [[ "$1" == "dark" ]]; then
  sed -i "1 s/gruvbox_light/gruvbox_dark/" ~/.config/alacritty/alacritty.toml
  sed -i "s/\"\"/\"hard\"/" ~/.config/nvim/lua/plugins/colorscheme.lua
  sed -i "s/\"light\"/\"dark\"/" ~/.config/nvim/lua/plugins/colorscheme.lua
else
  sed -i "1 s/gruvbox_dark/gruvbox_light/" ~/.config/alacritty/alacritty.toml
  sed -i "s/\"hard\"/\"\"/" ~/.config/nvim/lua/plugins/colorscheme.lua
  sed -i "s/\"dark\"/\"light\"/" ~/.config/nvim/lua/plugins/colorscheme.lua
fi

