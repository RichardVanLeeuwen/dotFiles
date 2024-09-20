{ config, pkgs, lib, inputs, outputs, ... }: {

  imports = [
    ../../modules
    ./hardware-configuration.nix
  ];

# allows use of pkgs.unstable to get updates earlier
  nixpkgs.overlays = [
    outputs.overlays.unstable-packages
  ];

  # setup nvidia graphics card
  nvidia.enable = true;
  # install photo editing software
  photo.enable = true;
  # install 3d editing software
  "3d".enable = true;

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sdb";
  boot.loader.grub.useOSProber = true;

  # Configure X11
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
    displayManager = {
      gdm.enable = true;
    };
    desktopManager.gnome.enable = true;
  };

  services.displayManager = {
    autoLogin = {
      enable = true;
      user = "richard";
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

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
