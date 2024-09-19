{ pkgs, config, ... }: {
  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
