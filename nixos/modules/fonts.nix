{ pkgs, config, lib, ... }: {
  options = {
    fonts.enable = lib.mkEnableOption "fonts";
  };

  config.fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    noto-fonts
    fira-code
    jetbrains-mono
  ];
}
