{ pkgs, config, lib, ... }: {
  options = {
    fonts.enable = lib.mkEnableOption "fonts";
  };

  config.fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
  ];
}
