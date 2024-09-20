{ config, lib, pkgs, ... }: {
  options = {
    photo.enable = lib.mkEnableOption "Set up photo editing stuffs";
  };

  config = lib.mkIf config.photo.enable {
    environment.systemPackages = with pkgs; [
      # unstable works because of the overlay
      unstable.darktable
      gimp
    ];
  };
}

