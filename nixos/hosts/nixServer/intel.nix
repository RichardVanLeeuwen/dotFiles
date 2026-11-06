{ pkgs, ... }: {
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      # Basic cpu driver
      intel-media-driver
      # OpenCL support
      intel-compute-runtime

      vaapiIntel
    ];
  };

  environment.systemPackages = with pkgs; [
    # 'sudo intel_gpu_top' for gpu activity monitoring
    intel-gpu-tools
  ];
}
