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

  programs.plasma = {
    enable = true;
    shortcuts = {

      "KDE Keyboard Layout Switcher"."Switch keyboard layout to A user-defined custom Layout" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to Portuguese (Brazil)" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to abnt2" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to workman" = [ ];
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = [ ];
      "firefox.desktop"."_launch" = "Ctrl+Alt+N";
      "firefox.desktop"."new-private-window" = [ ];
      "firefox.desktop"."new-window" = [ ];
      "firefox.desktop"."profile-manager-window" = [ ];
      "footclient.desktop"."_launch" = "Ctrl+Alt+A";
      "kded5"."display" = [ ];
      "ksmserver"."Lock Session" = [ "Screensaver" "Alt+Pause" ];
      "ksmserver"."Log Out" = [ ];
      "kwin"."Show Desktop" = [ ];
      "kwin"."Switch One Desktop to the Left" = "Ctrl+Y";
      "kwin"."Switch One Desktop to the Right" = "Ctrl+O";
      "kwin"."Switch Window Left" = "Meta+Y";
      "kwin"."Switch Window Right" = "Meta+O";
      "kwin"."Switch to Desktop 1" = "Ctrl+1";
      "kwin"."Switch to Desktop 2" = "Ctrl+2";
      "kwin"."Switch to Desktop 3" = "Ctrl+3";
      "kwin"."Switch to Desktop 4" = "Ctrl+4";
      "kwin"."Switch to Desktop 5" = "Ctrl+5";
      "kwin"."Window Close" = "Meta+D";
      "kwin"."Window Fullscreen" = "Meta+T";
      "kwin"."Window Maximize" = "Meta+E";
      "kwin"."Window Minimize" = "Meta+,";
      "kwin"."Window Raise" = "Meta+L";
      "kwin"."Window to Desktop 1" = "Ctrl+!";
      "kwin"."Window to Desktop 2" = "Ctrl+@";
      "kwin"."Window to Desktop 3" = "Ctrl+#";
      "kwin"."Window to Desktop 4" = "Ctrl+$";
      "kwin"."Window to Desktop 5" = "Ctrl+%";
      "kwin"."Window to Next Desktop" = "Ctrl+Shift+O";
      "kwin"."Window to Previous Desktop" = "Ctrl+Shift+Y";
      "org.kde.dolphin.desktop"."_launch" = [ ];
      "org_kde_powerdevil"."Hibernate" = [ "Ctrl+Alt+Del" "Hibernate" ];
      "org_kde_powerdevil"."PowerOff" = [ "Ctrl+Alt+End" "Power Off" ];
      "org_kde_powerdevil"."Sleep" = [ "Sleep" "Ctrl+Alt+Home" ];
      "org_kde_powerdevil"."Turn Off Screen" = "Ctrl+Alt+PgDown";
      "telegram.desktop"."Quit" = [ ];
      "telegram.desktop"."_launch" = "Ctrl+Alt+E";

    };
    files = {

      "baloofilerc"."General"."folders[$e]" = "$HOME/,/userdata/@workspace/";
      "kcminputrc"."Keyboard"."RepeatDelay" = 305;
      "kcminputrc"."Keyboard"."RepeatRate" = 30.710000;
      "kcminputrc"."Mouse"."cursorTheme" = "Oxygen_Blue";
      "kdeglobals"."General"."AllowKDEAppsToRememberWindowPositions" = true;
      "kdeglobals"."KDE"."AnimationDurationFactor" = 0;
      "kdeglobals"."KDE"."SingleClick" = false;
      "kdeglobals"."KFileDialog Settings"."Allow Expansion" = false;
      "kdeglobals"."KFileDialog Settings"."Automatically select filename extension" = true;
      "kdeglobals"."KFileDialog Settings"."Breadcrumb Navigation" = true;
      "kdeglobals"."KFileDialog Settings"."Decoration position" = 2;
      "kdeglobals"."KFileDialog Settings"."LocationCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."PathCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."Show Bookmarks" = false;
      "kdeglobals"."KFileDialog Settings"."Show Full Path" = false;
      "kdeglobals"."KFileDialog Settings"."Show Inline Previews" = true;
      "kdeglobals"."KFileDialog Settings"."Show Speedbar" = true;
      "kdeglobals"."KFileDialog Settings"."Show hidden files" = false;
      "kdeglobals"."KFileDialog Settings"."Sort by" = "Name";
      "kdeglobals"."KFileDialog Settings"."Sort directories first" = true;
      "kdeglobals"."KFileDialog Settings"."Sort hidden files last" = false;
      "kdeglobals"."KFileDialog Settings"."Sort reversed" = false;
      "kdeglobals"."KFileDialog Settings"."Speedbar Width" = 138;
      "kdeglobals"."KFileDialog Settings"."View Style" = "DetailTree";
      "kdeglobals"."WM"."activeBackground" = "49,54,59";
      "kdeglobals"."WM"."activeBlend" = "252,252,252";
      "kdeglobals"."WM"."activeForeground" = "252,252,252";
      "kdeglobals"."WM"."inactiveBackground" = "42,46,50";
      "kdeglobals"."WM"."inactiveBlend" = "161,169,177";
      "kdeglobals"."WM"."inactiveForeground" = "161,169,177";
      "kglobalshortcutsrc"."firefox.desktop"."_k_friendly_name" = "Firefox";
      "kglobalshortcutsrc"."footclient.desktop"."_k_friendly_name" = "Foot Client";
      "kglobalshortcutsrc"."ksmserver"."_k_friendly_name" = "Session Management";
      "kglobalshortcutsrc"."telegram.desktop"."_k_friendly_name" = "64Gram Desktop";
      "khotkeysrc"."General"."AllowKDEAppsToRememberWindowPositions[$d]" = "";
      "khotkeysrc"."GesturesExclude"."Comment" = "";
      "khotkeysrc"."GesturesExclude"."WindowsCount" = 0;
      "khotkeysrc"."KDE"."AnimationDurationFactor[$d]" = "";
      "khotkeysrc"."KDE"."LookAndFeelPackage[$d]" = "";
      "khotkeysrc"."KDE"."SingleClick[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Allow Expansion[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Automatically select filename extension[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Breadcrumb Navigation[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Decoration position[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."LocationCombo Completionmode[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."PathCombo Completionmode[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Bookmarks[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Full Path[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Inline Previews[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show Speedbar[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Show hidden files[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort by[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort directories first[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort hidden files last[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Sort reversed[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."Speedbar Width[$d]" = "";
      "khotkeysrc"."KFileDialog Settings"."View Style[$d]" = "";
      "kiorc"."Confirmations"."ConfirmDelete" = false;
      "kwalletrc"."Wallet"."First Use" = false;
      "kwinrc"."Desktops"."Id_1" = "54290a9f-1683-4ffd-8c88-e939c94c4361";
      "kxkbrc"."Layout"."DisplayNames" = ",";
      "kxkbrc"."Layout"."LayoutList" = "workman,br";
      "kxkbrc"."Layout"."Options" = "ctrl:swapcaps,grp:ctrls_toggle";
      "kxkbrc"."Layout"."ResetOldOptions" = true;
      "kxkbrc"."Layout"."Use" = true;
      "kxkbrc"."Layout"."VariantList" = ",abnt2";
    };
  };
}
