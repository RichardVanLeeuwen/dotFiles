{ config, pkgs, lib, ... }: {

  imports = [
    ../../modules/default.nix
    ./hardware-configuration.nix
  ];

  networking.hostname = "nixRasp";
}
