{
inputs.t64desktop.url = "github:Markus328/64gram-desktop-bin";
  outputs = { self, nixpkgs, nur }: {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
