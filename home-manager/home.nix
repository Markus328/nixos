{ pkgs, t64gram, ... }:
{

  home.username = "markus";
  home.homeDirectory = "/home/markus";
  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
  home.sessionVariables = {
    XCURSOR_THEME = "breeze_cursors";
  };
  gtk = {
    enable = true;
    cursorTheme = {
      name = "breeze_cursors";
      package = pkgs.breeze-icons;
    };
    theme = {
      name = "Breeze";
      package = pkgs.breeze-gtk;
    };
  };
  nixpkgs.overlays = [
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    })
  ];
  home.packages = with pkgs; [
    waybar
    wofi
    pavucontrol
    nixos-option
    bottles
    grapejuice
    wl-clipboard
    foot
    keepassxc
    nextcloud-client
    tmux
    wineWowPackages.unstableFull
    t64gram

    #programming
    clang
    clang-tools
    cargo
    rnix-lsp
    nodejs

  ];

}
