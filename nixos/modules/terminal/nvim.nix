{ pkgs, config, ... }: {
  programs.neovim = {
    defaultEditor = true;
  };

  environment.systemPackages = with pkgs; [
    unstable.neovim
    gcc
    ripgrep
    fzf
  ];
}
