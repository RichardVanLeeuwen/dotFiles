{ config, lib, pkgs, username, ... }: {

  options = {
    hosting.enable = lib.mkEnableOption "Setup hosting software";
  };

  config = lib.mkIf config.hosting.enable {
    virtualisation.docker.enable = true;

    users.extraGroups.docker.members = [ username ];
  };
}
