{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    nvim
  ];
}
