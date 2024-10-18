{ config, pkgs, lib, inputs, outputs, username, ... }: {

  imports = [
    ../../modules
    ./hardware-configuration.nix
  ];

  desktop.enable = lib.mkForce false;
  hosting.enable = lib.mkForce true;

  networking = {
    hostName = "nixRasp";
    firewall = {
      enable = false;
      allowedTCPPorts = [ 9443 8123 ];
    };
  };

  services.openssh.enable = true;

  # Just... don't use this, took me a frustrating day to figure out this option was locking me out.
  # users.mutableUsers = false;

  system.stateVersion = "23.11";
}
