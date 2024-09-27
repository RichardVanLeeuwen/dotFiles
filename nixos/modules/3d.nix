{ config, lib, pkgs, ... }: {
  # not active by default
  options = {
    "3d".enable = lib.mkEnableOption "Set up 3d editing tools";
  };

  config = lib.mkIf config."3d".enable {
    environment.systemPackages = with pkgs; [
      blender
      cura
    ];
  };
}

