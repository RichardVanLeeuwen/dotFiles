{ config, pkgs, lib, inputs, outputs, ... }: {

  imports = [
    ../../modules
    ./hardware-configuration.nix
  ];

  # allows use of pkgs.unstable to get updates earlier
  nixpkgs.overlays = [
    outputs.overlays.unstable-packages
  ];

  networking.hostName = "nixPC";

  # setup nvidia graphics card
  nvidia.enable = lib.mkForce true;
  # install photo editing software
  photo.enable = lib.mkForce true;
  # install 3d editing software
  "3d".enable = lib.mkForce true;

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sdb";
  boot.loader.grub.useOSProber = true;

  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    drivers = [ pkgs.cnijfilter2 ];
  };

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  system.stateVersion = "24.05";
}
