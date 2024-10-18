{config, lib,  ... }: {
  # entrypoint for all modules
  # a host can import this single file and has acces to all modules
  imports = [
    ./3d.nix
    ./dev
    ./desktop.nix
    ./fonts.nix
    ./hosting.nix
    ./nvidia.nix
    ./photo.nix
    ./system.nix
    ./terminal
  ];

  config.desktop.enable = lib.mkDefault true;
  config.fonts.enable = config.desktop.enable;
  config."3d".enable = lib.mkDefault false;
  config.photo.enable = lib.mkDefault false;
  config.hosting.enable = lib.mkDefault false;
  config.nvidia.enable = lib.mkDefault false;
}
