{
  description = "main flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
	nixosConfigurations.vertex = nixpkgs.lib.nixosSystem {
		modules = [ ./configuration.nix ];
	};
  };
}
