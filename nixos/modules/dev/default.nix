{ pkgs, config, ... }: {
  environment.systemPackages = [
    pkgs.nodePackages_latest.nodejs
  ];
}
