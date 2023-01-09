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
  };

  outputs = { nixpkgs, home-manager, t64gram, ... }: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    defaultPackage.x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;

    homeConfigurations = {
      "markus" = home-manager.lib.homeManagerConfiguration {
        # Note: I am sure this could be done better with flake-utils or something
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = { t64gram=t64gram.defaultPackage.x86_64-linux; };
        modules = [ ./home.nix ];
      };
    };
  };
}

