{ config, pkgs, lib, inputs, outputs, username, ... }: {

  imports = [
    ../../modules
    ./hardware-configuration.nix
  ];

  desktop.enable = false;
  hosting.enable = true;

  system.stateVersion = "24.05";
}
