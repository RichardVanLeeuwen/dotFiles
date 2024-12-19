{ pkgs, lib, config, ... }: {
  options = {
    desktop.enable = lib.mkEnableOption "desktop";
  };

  config = lib.mkIf config.desktop.enable {
    environment.systemPackages = with pkgs; [
      alacritty
      keepass
      libreoffice-still
      obsidian
      spotify
    ];

    programs.firefox.enable = true;

    # Open port for spotify connect discovery
    networking.firewall.allowedUDPPorts = [ 5353 ];

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
