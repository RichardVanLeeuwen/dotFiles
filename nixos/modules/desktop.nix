{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    obsidian
    keepass
  ];

  programs.firefox.enable = true;
}
