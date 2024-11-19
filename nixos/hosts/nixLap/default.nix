{ config, pkgs, lib, inputs, outputs, ... }: {

  imports = [
    ../../modules
    ../../modules/desktop.nix
    ./hardware-configuration.nix
  ];

  # allows use of pkgs.unstable to get updates earlier
  nixpkgs.overlays = [
    outputs.overlays.unstable-packages
  ];

  networking.hostName = "nixLap";

  # install 3d editing software
  sway.enable = lib.mkForce true;

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

  system.stateVersion = "24.11";
}
