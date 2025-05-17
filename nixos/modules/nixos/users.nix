{ config, pkgs, ... }: {
  users.users.gixx = {
    isNormalUser = true;
    description = "gixx";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [ ];
  };

  users.defaultUserShell = pkgs.zsh;
}
