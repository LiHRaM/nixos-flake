{
  description = "LiHRaM's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    neovim-lihram = {
      url = "github:LiHRaM/vim-lua-config";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, neovim-lihram, ... }@inputs:
  let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = [ neovim-lihram.overlay.${system} ];
    };
  in
  {
    nixosConfigurations = {
      freyja = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs pkgs; };
        modules = [
          ./configuration.nix
          ./profiles/laptop.nix
          ./hosts/freyja.nix
          ./hardware/freyja.nix
          ./packages.nix
          ./modules/kubernetes-dev.nix
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.lihram = import ./homes/lihram.nix;
          }
        ];
      };
    };
  };
}
