{ pkgs, t64gram, ... }:
{

  home.username = "markus";
  home.homeDirectory = "/home/markus";
  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
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
  home.packages = with pkgs; [
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

