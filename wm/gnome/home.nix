{ config, lib, pkgs, user, ... }:

{
  dconf.settings = {
    "org/gnome/shell" = {
        favorite-apps = [
          "org.gnome.Nautilus.desktop"
          "Alacritty.desktop"
          "google-chrome.desktop"
          "slack.desktop"
          "code.desktop"
          "discord.desktop"
        ];
        disable-user-extensions = false;
        enabled-extensions = [
          "user-theme@gnome-shell-extensions.gcampax.github.com"
          "appindicatorsupport@rgcjonas.gmail.com"
          "caffeine@patapon.info"
          "clipboard-indicator@tudmotu.com"
          "dash-to-dock@micxgx.gmail.com"
        ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = true;
      clock-show-weekday = true;
      clock-show-seconds = true;
      gtk-theme = "Catppuccin-Dark";
      icon-theme = "Zafiro-icons-Dark";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/background" = {
      "picture-uri" = "/home/${user}/.background-image";
      "picture-uri-dark" = "/home/${user}/.background-image";
    };

    "org/gnome/desktop/screensaver" = {
      "picture-uri" = "/home/${user}/.background-image";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        binding = "<Primary><Alt>t";
        command = "alacritty";
        name = "open-terminal";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      "activate-single-window" = true;
      "animate-show-apps" = true;
      "apply-glossy-effect" = true;
      "autohide" = true;
      "background-color" = "#ffffff";
      "background-opacity" = 0;
      "dash-max-icon-size" = 48;
      "dock-position" = "BOTTOM";
      "multi-monitor" = true;
      "show-apps-at-top" = true;
      "show-trash" = false;
      "transparency-mode" = "FIXED";
    };
  
    "org/gnome/shell/extensions/caffeine" = {
        toggle-state = true;
      };

    "org/gnome/shell/extensions/user-theme" = {
        name = "Catppuccin-Dark";
    };
  };

  home.packages = with pkgs; [
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.caffeine
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.user-themes
  ];
}