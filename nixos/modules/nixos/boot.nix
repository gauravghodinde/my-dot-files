{ config, pkgs, ... }: {
  boot.loader = {
    grub = {
      enable = true;
      useOSProber = true;
      copyKernels = true;
      efiSupport = true;
      fsIdentifier = "label";
      devices = [ "nodev" ];
    };
    efi.canTouchEfiVariables = true;
  };
  boot.supportedFilesystems = [ "ntfs" ];
  # auto mount windows partition / common drive
  fileSystems."/mnt/backup" = {
    device = "/dev/disk/by-uuid/96060C32060C1641";
    fsType = "ntfs";
    options = [ "defaults" ];
  };
}
