{ pkgs, config, ... }: {
  imports = [
    ./nvim.nix
  ];

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    eza
    git
    ripgrep
    starship
    zellij
    zoxide
  ];
}
