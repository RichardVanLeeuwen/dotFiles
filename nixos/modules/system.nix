{ pkgs, lib, ... }: {
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  # auto delete builds
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "Europe/Amsterdam";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ALL = "en_US.UTF-8";
  };

  programs.git = {
    enable = true;
  };
}
