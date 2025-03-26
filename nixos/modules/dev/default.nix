{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [
    nodejs_22
    qmk
    gcc
    rustup
  ];
}
