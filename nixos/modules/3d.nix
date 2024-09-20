{ config, lib, pkgs, ... }: {
  # not active by default
  options = {
    "3d".enable = lib.mkEnableOption "Set up 3d editing tools";
  };

  environment.systemPackages = lib.mkIf config."3d".enable [
    pkgs.blender
    pkgs.cura
  ];
}

