{
  description = "LiHRaM's nixos setups";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = inputs: {
    nixosConfigurations = {
      freyja = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
	  ./hosts/freyja.nix
	  ./hardware/freyja.nix
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
	    home-manager.users.lihram = import ./homes/lihram.nix;
          }
        ];
        specialArgs = { inherit inputs; };
      }; 
    };
  };
}
