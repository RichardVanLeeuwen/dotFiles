{ pkgs, config, ... }: {
  imports = [
    ./nvim.nix
  ];

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    btop
    eza
    fastfetch
    ripgrep
    starship
    zellij
    zoxide
  ];
}

