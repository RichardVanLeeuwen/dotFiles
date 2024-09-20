{ ... }: {
  # entrypoint for all modules
  # a host can import this single file and has acces to all modules
  imports = [
    ./3d.nix
    ./browser.nix
    ./dev
    ./fonts.nix
    ./nvidia.nix
    ./photo.nix
    ./system.nix
    ./terminal
  ];
}
