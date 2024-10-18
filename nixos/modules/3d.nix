{ config, lib, pkgs, ... }: {
  options = {
    "3d".enable = lib.mkEnableOption "3d";
  };

  config = lib.mkIf config."3d".enable {
    environment.systemPackages = with pkgs; [
      blender
      cura
    ];
  };
}

