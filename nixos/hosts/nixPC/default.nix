{ config, pkgs, lib, ... }: {

  imports = [
    ../../modules/default.nix
    ./hardware-configuration.nix
  ];

  # setup nvidia graphics card
  nvidia.enable = true;

  networking.hostname = "nixPC";

  nixpkgs.config = {
    allowUnfree = true;
  };
}
