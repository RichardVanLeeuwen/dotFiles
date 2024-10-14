{ pkgs, lib, config, ... }: {

  options = {
    desktop.enable = lib.mkDefault true;
  };

  config = lib.mkIf config.desktop.enable {
    environment.systemPackages = with pkgs; [
      alacritty
      keepass
      libreoffice-still
      obsidian
    ];

    programs.firefox.enable = true;

    # Configure X11
    services.xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      displayManager = {
        gdm.enable = true;
      };
      desktopManager.gnome.enable = true;
    };

    services.displayManager = {
      autoLogin = {
        enable = true;
        user = "richard";
      };
    };
  };
}
