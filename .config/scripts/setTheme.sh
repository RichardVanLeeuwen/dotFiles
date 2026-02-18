setTheme() {
  if [[ "$1" == "dark" ]]; then
    # Alacritty
    cp ~/.config/alacritty/gruvbox_dark.toml ~/.config/alacritty/current_theme.toml
    # KDE theme
    plasma-apply-colorscheme BreezeDark
  else
    # Alacritty
    cp ~/.config/alacritty/gruvbox_light.toml ~/.config/alacritty/current_theme.toml
    # KDE theme
    plasma-apply-colorscheme BreezeLight
  fi
}

light(){
  setTheme 'light' &> /dev/null
}

dark(){
  setTheme 'dark' &> /dev/null
}
