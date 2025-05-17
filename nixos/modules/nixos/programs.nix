{ config, pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    vscode
    kitty
    gcc
    zsh
    ncdu
    btop
   # spotify
    docker
    docker-compose
    go
    gparted
    git
    rustup
    android-tools
    distrobox
    fastfetch # good terminal display
    eza # better ls
    gnumake42
    obsidian
    libclang
    #inputs.helix.packages."${pkgs.system}".helix
 
    firefox-devedition-bin 
  ];


  programs.adb.enable = true;

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    zsh-autoenv.enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" "z" ];
    };
  };

  virtualisation.docker.enable = true;
  virtualisation.podman.enable = true;
}
