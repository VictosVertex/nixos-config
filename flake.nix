{
  description = "main flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }: {
	nixosConfigurations.vertex = nixpkgs.lib.nixosSystem {
		modules = [ 
		  ./configuration.nix 
		  home-manager.nixosModules.home-manager {
		      	home-manager.useGlobalPkgs = true;
			home-manager.useUserPackages = true;
 			home-manager.users.victos = ./home.nix;
                  }
		];
	};
  };
}
