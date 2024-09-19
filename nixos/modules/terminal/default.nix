{ pkgs, config, ... }: {

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    starship
    zellij
    zoxide
  ];
}
