{ config, pkgs, lib, ...}:{

  boot = {
    kernelPackages = pkgs.linuxKernel.packages.linux_rpi4;
    initrd.availableKernelModules = [ "xhci_pci" "usbhid" "usb_storage" ];
    loader = {
      grub.enable = false;
      generic-extlinux-compatible.enable = true;
    };
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
      options = [ "noatime" ];
    };
  };

# connecting to a smb drive
  fileSystems."/nas/richard" =
    { device = "//192.168.1.183/richard";
      fsType = "cifs";
      options = [ "credentials=/etc/credentials/.nas" "uid=1000" "gid=1000" ];
    };

  fileSystems."/nas/linda" =
    { device = "//192.168.1.183/linda";
      fsType = "cifs";
      options = [ "credentials=/etc/credentials/.nas" "uid=1000" "gid=1000" ];
    };

  hardware.enableRedistributableFirmware = true;
}
