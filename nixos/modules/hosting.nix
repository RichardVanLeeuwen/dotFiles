{ config, lib, pkgs, username, ... }: {
  options = {
    hosting.enable = lib.mkEnableOption "hosting";
  };

  config = lib.mkIf config.hosting.enable {
    environment.variables.DOCKER_HOST = "unix:///var/run/docker.sock";
    virtualisation.docker = {
      enable = true;
      extraOptions = "--data-root /home/${username}/docker";
    };

    users.extraGroups.docker.members = [ username ];
  };
}
