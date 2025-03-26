{ config, lib, pkgs, ... }: {

  options = {
    nvidia.enable = lib.mkEnableOption "Configures nvidia GPU";
  };

  config = lib.mkIf config.nvidia.enable {
    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };

    # Found this somewhere, not sure where anymore. I recognized this from trying (and failing) to get sway working on a 1050TI.
    boot.kernelParams = [ "nvidia-drm.modeset=1" ]; # Additional kernel parameters
    boot.kernelModules = [ "nvidia_uvm" "nvidia_modeset" "nvidia_drm" "nvidia" "glaxnimate" ]; # Load these kernel modules at boot

    services.xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
    };

    hardware.nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
