{
  description = "My Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    t64gram = {
      url = "github:Markus328/64gram-desktop-bin";
    };
    plasma-manager.url = "github:pjones/plasma-manager";
    plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.inputs.home-manager.follows = "home-manager";
  };

  outputs = inputs: {
    defaultPackage.x86_64-linux = inputs.home-manager.defaultPackage.x86_64-linux;

    homeConfigurations = {
      "markus" = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = { t64gram = inputs.t64gram.defaultPackage.x86_64-linux; };
        modules = [
          inputs.plasma-manager.homeManagerModules.plasma-manager
          ./home.nix
        ];
      };
    };
  };
}

