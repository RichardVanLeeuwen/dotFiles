{ pkgs, config, ... }: {
  imports = [
    ./nvim.nix
  ];

  config.programs.zsh.enable = true;

  config.environment.systemPackages = with pkgs; [
    btop
    eza
    git
    ripgrep
    starship
    zellij
    zoxide
  ];
}

