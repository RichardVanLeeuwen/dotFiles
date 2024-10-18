{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [
    nodePackages_latest.nodejs
    libgcc
  ];
}
