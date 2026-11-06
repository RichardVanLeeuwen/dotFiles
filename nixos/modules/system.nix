{ pkgs, lib, ... }: {
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  # auto delete builds
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "Europe/Amsterdam";

  i18n.defaultLocale = " en_US.UTF-8" ;
  i18n.extraLocaleSettings = {
    LC_ADDRESS = " nl_NL.utf-8";
    LC_IDENTIFICATION = " nl_NL.utf-8";
    LC_MEASUREMENT = " nl_NL.utf-8";
    LC_MONETARY = " nl_NL.utf-8";
    LC_NAME = " nl_NL.utf-8";
    LC_PAPER = " nl_NL.utf-8";
    LC_TELEPHONE = " nl_NL.utf-8";
    LC_TIME = " nl_NL.utf-8";
  };

  programs.git = {
    enable = true;
  };
}
