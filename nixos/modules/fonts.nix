{ pkgs, config, lib, ... }: {
  options = {
    fonts.enable = lib.mkEnableOption "fonts";
  };

  config.fonts.packages = with pkgs; [
    # nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })
    noto-fonts
    fira-code-nerdfont
    jetbrains-mono
  ];
}
