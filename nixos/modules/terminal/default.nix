{ pkgs, config, ... }: {
  imports = [
    ./nvim.nix
  ];

  options = {
    alaritty.enable = lib.mkDefault "Install alacritty";
  };

  programs.zsh.enable = true;

  environment.systemPackages = lib.mkIf config.alacritty.enable [
    pkgs.alacritty
  ];

  environment.systemPackages = with pkgs; [
    alacritty
    btop
    eza
    git
    ripgrep
    starship
    zellij
    zoxide
  ];
}
