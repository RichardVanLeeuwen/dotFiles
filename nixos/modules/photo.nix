{ config, lib, pkgs, pkgs_unstable, ... }: {
  options = {
    photo.enable = lib.mkEnableOption "Set up photo editing stuffs";
  };

  config = lib.mkIf config.photo.enable {
    environment.systemPackages = [
      pkgs_unstable.darktable
      pkgs.gimp
    ];
  };
}

