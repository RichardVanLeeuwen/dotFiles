{ outputs, ... }: {

  imports = [
    ../../modules
    ./hardware-configuration.nix
    ./intel.nix
  ];

  # Don't need a desktop on a server
  desktop.enable = false;
  hosting.enable = true;

  # allows use of pkgs.unstable to get updates earlier
  nixpkgs.overlays = [
    outputs.overlays.unstable-packages
  ];

  networking.hostName = "nixServer";

  services.openssh.enable = true;

  system.stateVersion = "26.05";
}
