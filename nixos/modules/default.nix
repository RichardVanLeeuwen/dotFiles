{ config, lib, ... }: {
  # entrypoint for all modules
  # a host can import this single file and has acces to all modules
  imports = [
    ./3d.nix
    ./desktop.nix
    ./dev
    ./fonts.nix
    ./hosting.nix
    ./nvidia.nix
    ./photo.nix
    ./ssh.nix
    ./system.nix
    ./terminal
  ];

  config.desktop.enable = lib.mkDefault true;
  config.ssh.enable = lib.mkDefault true;
  config.fonts.enable = config.desktop.enable;
}
