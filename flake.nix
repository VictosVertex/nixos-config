{
    description = "main flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs: 
    let
        system = "x86_64-linux";
        overlays = [
            inputs.neovim-nightly-overlay.overlays.default
        ];
    in
    {
        nixosConfigurations.vertex = nixpkgs.lib.nixosSystem {
           inherit system;
            modules = [ 
                ./system/configuration.nix
                home-manager.nixosModules.home-manager {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.backupFileExtension = "backup";
                    home-manager.users.victos = ./user/home.nix;
                }
                {
                    nixpkgs.overlays = overlays;
                }
            ];
        };
    };
}
