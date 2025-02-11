{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = { self, nixpkgs, spicetify-nix, ... }@inputs:
  let
    system = "x86_64-linux"; 
    pkgs = nixpkgs.legacyPackages.${system};
    spicePkgs = spicetify-nix.legacyPackages.${system};
  in {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
        spicetify-nix.nixosModules.spicetify
      ];
    };
  };
}

