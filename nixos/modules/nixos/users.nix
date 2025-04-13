{ config, pkgs, ... }: {
  users.users.gaurav = {
    isNormalUser = true;
    description = "gaurav";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [ ];
  };

  users.defaultUserShell = pkgs.zsh;
}
