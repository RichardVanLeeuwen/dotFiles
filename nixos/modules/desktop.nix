{ pkgs, lib, config, ... }: {
  options = {
    desktop.enable = lib.mkDefault "Install desktop apps";
  };

  config.environment.systemPackages = with pkgs; [
    alacritty
    keepass
    obsidian
  ];

  config.programs.firefox.enable = true;
}
