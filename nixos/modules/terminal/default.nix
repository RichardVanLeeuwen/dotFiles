{ pkgs, config, ... }: {
  imports = [
    ./nvim.nix
  ];

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    btop
    eza
    ripgrep
    starship
    zellij
    zoxide
  ];
}

