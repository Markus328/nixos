{
  inputs = {
    hyprland.url = "github:hyprwm/Hyprland";
  };
  outputs = { self, nixpkgs, hyprland }: {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        hyprland.nixosModules.default
        ./configuration.nix
      ];
    };
  };
}
